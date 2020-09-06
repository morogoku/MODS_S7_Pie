.class final Lcom/android/server/asks/ASKSManagerService$Restrict;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ASKSManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Restrict"
.end annotation


# instance fields
.field mDatelimit:Ljava/lang/String;

.field mFrom:Ljava/lang/String;

.field mPermissionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mType:Ljava/lang/String;

.field mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDateLimit()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setDateLimit(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public setPermissionList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", datelimit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "REVOKE"

    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, ", pm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_3e
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
