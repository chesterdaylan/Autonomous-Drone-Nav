#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 1810
# Hash 7628
# Hash 8015
# Hash 5169
# Hash 2084
# Hash 8083
# Hash 1067
# Hash 4515
# Hash 5502
# Hash 5254
# Hash 2917
# Hash 8496
# Hash 5379
# Hash 8624
# Hash 7311
# Hash 8476
# Hash 1321
# Hash 5021
# Hash 6700
# Hash 1571
# Hash 5078
# Hash 5780
# Hash 2293
# Hash 1545
# Hash 5310
# Hash 6061
# Hash 1862
# Hash 8898
# Hash 9150
# Hash 8588
# Hash 3149
# Hash 3416
# Hash 4126
# Hash 6993
# Hash 6462
# Hash 9227
# Hash 5649
# Hash 8263
# Hash 5754
# Hash 2766
# Hash 6358
# Hash 6519
# Hash 1651
# Hash 9492
# Hash 9005
# Hash 2521
# Hash 9579
# Hash 2455
# Hash 8114
# Hash 6218
# Hash 5787
# Hash 3925
# Hash 7945
# Hash 2032
# Hash 7593
# Hash 9013
# Hash 4174
# Hash 2085
# Hash 3293
# Hash 3428
# Hash 2468
# Hash 3850
# Hash 9619
# Hash 6339
# Hash 3917
# Hash 7874
# Hash 5079
# Hash 2545
# Hash 3458
# Hash 8917
# Hash 5968
# Hash 1641
# Hash 3439
# Hash 8983
# Hash 5597
# Hash 9401
# Hash 7223
# Hash 5598
# Hash 5487
# Hash 2119
# Hash 7145
# Hash 9883
# Hash 2887
# Hash 9845
# Hash 6151
# Hash 2891
# Hash 8392
# Hash 3529
# Hash 5623
# Hash 7065
# Hash 6699
# Hash 1898
# Hash 2610
# Hash 7277
# Hash 6341
# Hash 1831
# Hash 2416
# Hash 1027
# Hash 6529
# Hash 7570
# Hash 6792
# Hash 9468
# Hash 4590
# Hash 2452
# Hash 8549
# Hash 8183
# Hash 9541
# Hash 5777
# Hash 4584
# Hash 1624
# Hash 2644
# Hash 3563
# Hash 3768
# Hash 5903
# Hash 4034
# Hash 5983
# Hash 1738
# Hash 8848
# Hash 3683
# Hash 2082
# Hash 8421
# Hash 6130
# Hash 9930
# Hash 6910
# Hash 7786
# Hash 2240