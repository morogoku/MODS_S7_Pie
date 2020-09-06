.class public Lcom/samsung/android/knox/keystore/CSRProfile;
.super Ljava/lang/Object;
.source "CSRProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;,
        Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;,
        Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/CSRProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commonName:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

.field public domainComponent:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;

.field public keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

.field public keyLength:I

.field public locality:Ljava/lang/String;

.field public organization:Ljava/lang/String;

.field public profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

.field public state:Ljava/lang/String;

.field public templateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/CSRProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    const/16 v1, 0x400

    iput v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyLength:I

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    const/16 v1, 0x400

    iput v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyLength:I

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    :try_start_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception v1

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_35
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    if-nez v1, :cond_3d

    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    :cond_3d
    :try_start_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    move-exception v1

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_4e
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    if-nez v1, :cond_56

    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    :cond_56
    :try_start_56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_60} :catch_61

    goto :goto_67

    :catch_61
    move-exception v1

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_67
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    if-nez v0, :cond_6f

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    :cond_6f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/keystore/CSRProfile$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/CSRProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    if-nez v0, :cond_e

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->SCEP:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_17

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->profileType:Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;

    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CSRProfile$ProfileType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_17
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    if-nez v0, :cond_25

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->PKCS10:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2e

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->csrFormat:Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;

    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CSRProfile$CSRFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2e
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    if-nez v0, :cond_3c

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_45

    :cond_3c
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyAlgType:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_45
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->templateName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->keyLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->commonName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->organization:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->domainComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CSRProfile;->locality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
