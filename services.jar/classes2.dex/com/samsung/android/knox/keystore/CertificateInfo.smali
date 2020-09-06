.class public Lcom/samsung/android/knox/keystore/CertificateInfo;
.super Ljava/lang/Object;
.source "CertificateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlias:Ljava/lang/String;

.field mCertificate:Ljava/security/cert/Certificate;

.field private mEnabled:Z

.field private mHasPrivateKey:Z

.field mKey:Ljava/security/Key;

.field private mKeystore:I

.field private mSystemPreloaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/CertificateInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/CertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    return-void
.end method

.method private compareKeys(Ljava/security/Key;Ljava/security/Key;)Z
    .registers 5

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_26

    instance-of v1, p1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    if-eqz v1, :cond_26

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    iget-object v3, v1, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {v2, v3}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    iget-object v3, v1, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;->compareKeys(Ljava/security/Key;Ljava/security/Key;)Z

    move-result v2

    if-eqz v2, :cond_26

    return v0

    :cond_26
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    return v0
.end method

.method public getHasPrivateKey()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    return v0
.end method

.method public getKeystore()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    return v0
.end method

.method public getPrivateKey()Ljava/security/Key;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    instance-of v1, v1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getSystemPreloaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    return-void
.end method

.method public setCertificate(Ljava/security/cert/Certificate;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    return-void
.end method

.method public setHasPrivateKey(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    return-void
.end method

.method public setKeystore(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    return-void
.end method

.method public setPrivateKey(Ljava/security/Key;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    return-void
.end method

.method public setSystemPreloaded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    :cond_35
    return-void
.end method
