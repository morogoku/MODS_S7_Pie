.class public Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;
.super Ljava/lang/Object;
.source "PermissionApplicationPrivateKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdminPkgName:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPort:I

.field private mStorageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAdminPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mHost:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPort:I

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAlias:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mStorageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAdminPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mHost:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPort:I

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAlias:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mStorageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mHost:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPort:I

    iput-object p4, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAlias:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mStorageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAdminPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAdminPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPort:I

    return v0
.end method

.method public getStorageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mStorageName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAdminPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mStorageName:Ljava/lang/String;

    return-void
.end method

.method public setAdminPkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAdminPkgName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionApplicationPrivateKey\nmAdminPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAdminPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmHost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmAlias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmStorageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mStorageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAdminPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mStorageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
