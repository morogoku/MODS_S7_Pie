.class final Lcom/android/server/IpSecService$UserRecord;
.super Ljava/lang/Object;
.source "IpSecService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UserRecord"
.end annotation


# static fields
.field public static final MAX_NUM_ENCAP_SOCKETS:I = 0x2

.field public static final MAX_NUM_SPIS:I = 0x8

.field public static final MAX_NUM_TRANSFORMS:I = 0x4

.field public static final MAX_NUM_TUNNEL_INTERFACES:I = 0x2


# instance fields
.field final mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$RefcountedResourceArray<",
            "Lcom/android/server/IpSecService$EncapSocketRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

.field final mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

.field final mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$RefcountedResourceArray<",
            "Lcom/android/server/IpSecService$SpiRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

.field final mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$RefcountedResourceArray<",
            "Lcom/android/server/IpSecService$TransformRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$RefcountedResourceArray<",
            "Lcom/android/server/IpSecService$TunnelInterfaceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/IpSecService$RefcountedResourceArray;

    const-class v1, Lcom/android/server/IpSecService$SpiRecord;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v0, Lcom/android/server/IpSecService$RefcountedResourceArray;

    const-class v1, Lcom/android/server/IpSecService$TransformRecord;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v0, Lcom/android/server/IpSecService$RefcountedResourceArray;

    const-class v1, Lcom/android/server/IpSecService$EncapSocketRecord;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v0, Lcom/android/server/IpSecService$RefcountedResourceArray;

    const-class v1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$RefcountedResourceArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v0, Lcom/android/server/IpSecService$ResourceTracker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$ResourceTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    new-instance v0, Lcom/android/server/IpSecService$ResourceTracker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$ResourceTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    new-instance v0, Lcom/android/server/IpSecService$ResourceTracker;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$ResourceTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    new-instance v0, Lcom/android/server/IpSecService$ResourceTracker;

    invoke-direct {v0, v1}, Lcom/android/server/IpSecService$ResourceTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-void
.end method


# virtual methods
.method removeEncapSocketRecord(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->remove(I)V

    return-void
.end method

.method removeSpiRecord(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->remove(I)V

    return-void
.end method

.method removeTransformRecord(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->remove(I)V

    return-void
.end method

.method removeTunnelInterfaceRecord(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->remove(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mSpiQuotaTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTransformQuotaTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSocketQuotaTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTunnelQuotaTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSpiRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTransformRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEncapSocketRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTunnelInterfaceRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
