.class public Lcom/android/server/asks/RUFSContainer;
.super Ljava/lang/Object;
.source "RUFSContainer.java"


# instance fields
.field mADPCarriers:Ljava/lang/String;

.field mADPModels:Ljava/lang/String;

.field mASKSRNEWCarriers:Ljava/lang/String;

.field mASKSRNEWModels:Ljava/lang/String;

.field mDigestInToken:Ljava/lang/String;

.field mHasRUFSToken:Z

.field mRUFSpolicyPath:Ljava/lang/String;

.field mRUFSpolicyVersion:Ljava/lang/String;

.field mSizeofFiles:J

.field mSizeofZip:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    iput-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getADPCarriers()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    return-object v0
.end method

.method public getADPModels()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    return-object v0
.end method

.method public getASKSRNEWCarriers()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    return-object v0
.end method

.method public getASKSRNEWModels()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    return-object v0
.end method

.method public getHasRUFSToken()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    return v0
.end method

.method public getPolicyPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeofFiles()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    return-wide v0
.end method

.method public getSizeofzip()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    return-wide v0
.end method

.method public setADPCarriers(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    return-void
.end method

.method public setADPModels(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    return-void
.end method

.method public setASKSRNEWCarriers(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    return-void
.end method

.method public setASKSRNEWModels(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    return-void
.end method

.method public setDigest(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    return-void
.end method

.method public setHasRUFSToken(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    return-void
.end method

.method public setPolicyPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    return-void
.end method

.method public setPolicyVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    return-void
.end method

.method public setSizeofFiles(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    return-void
.end method

.method public setSizeofZip(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    return-void
.end method
