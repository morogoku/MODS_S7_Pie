.class final Lcom/android/server/asks/ASKSManagerService$ASKSSession;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ASKSManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ASKSSession"
.end annotation


# instance fields
.field emMode:I

.field isASKSTarget:Z

.field mAASATokenName:Ljava/lang/String;

.field mAASATokenPath:Ljava/lang/String;

.field mCAKeyIndex:Ljava/lang/String;

.field mCertName:Ljava/lang/String;

.field mCodePath:Ljava/lang/String;

.field mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

.field mManifestPermission:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPackageDigest:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPackageNameHash:Ljava/lang/String;

.field mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

.field mRufsContainer:Lcom/android/server/asks/RUFSContainer;

.field mSignature:[Landroid/content/pm/Signature;

.field mTokenName:Ljava/lang/String;

.field mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mAASATokenName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mAASATokenPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mManifestPermission:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    return-void
.end method

.method public getAASATokenName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mAASATokenName:Ljava/lang/String;

    return-object v0
.end method

.method public getAASATokenPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mAASATokenPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCAKeyIndex()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getCertName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    return-object v0
.end method

.method public getCodePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-object v0
.end method

.method public getEMMode()I
    .registers 2

    iget v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    return v0
.end method

.method public getManifestPermission()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mManifestPermission:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgDigest()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgNameHash()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    return-object v0
.end method

.method public getRufsContainer()Lcom/android/server/asks/RUFSContainer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    return-object v0
.end method

.method public getSignature()[Landroid/content/pm/Signature;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getTokenName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasValue()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isASKSTarget()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    return v0
.end method

.method public setAASATokenName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mAASATokenName:Ljava/lang/String;

    return-void
.end method

.method public setAASATokenPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mAASATokenPath:Ljava/lang/String;

    return-void
.end method

.method public setASKSTarget(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    return-void
.end method

.method public setCAKeyIndex(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    return-void
.end method

.method public setCertName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    return-void
.end method

.method public setCodePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    return-void
.end method

.method public setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-void
.end method

.method public setEMMode(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    return-void
.end method

.method public setManifestPermission(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mManifestPermission:Ljava/util/ArrayList;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPkgDigest(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    return-void
.end method

.method public setPkgNameHash(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    return-void
.end method

.method public setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    return-void
.end method

.method public setRufsContainer(Lcom/android/server/asks/RUFSContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    return-void
.end method

.method public setSignature([Landroid/content/pm/Signature;)V
    .registers 3

    invoke-virtual {p1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    return-void
.end method

.method public setTokenName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v1, :cond_22

    const-string v1, ", restrict = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    const-string v1, ", em mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v1, :cond_42

    const-string v1, ", deletable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$Deletable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
