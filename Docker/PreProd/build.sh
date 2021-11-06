SERVICE_NAME=andromeda_inventory
BRANCH=qa

# Version Base
echo "Version"
VERSION=1

# Suma para la version por ejecución
echo "suma"
suma=$((VERSION+1))

# Checkout Branch
echo "Pull"
git checkout $BRANCH

# Adicion de la nueva version por ejecucion en este mismo archivo
echo "SED"
sed -i "s/VERSION=1/VERSION=$suma/g" build.sh

# Adición de ceros a la variable
echo "product Version"
PRODUCT_VERSION=0.$suma.0

# Exportar variable
echo "Export"
export TAG_VERSION=$PRODUCT_VERSION
export $BRANCH
export $SERVICE_NAME

# Login al ECR de AWS
echo "Login Docker ECR"
aws ecr get-login-password  | docker login --username AWS --password-stdin id_account.dkr.ecr.us-east-1.amazonaws.com

# Construcción de la imagen Docker
echo "Build Docker"
docker build --build-arg APP_NAME=$SERVICE_NAME -t id_account.dkr.ecr.us-east-1.amazonaws.com/$BRANCH-$SERVICE_NAME:$TAG_VERSION -t $BRANCH-$SERVICE_NAME:$TAG_VERSION .

# Push de la imagen Docker a ECR de AWS
echo "Push Docker"
docker push id_account.dkr.ecr.us-east-1.amazonaws.com/$BRANCH-$SERVICE_NAME:$TAG_VERSION

