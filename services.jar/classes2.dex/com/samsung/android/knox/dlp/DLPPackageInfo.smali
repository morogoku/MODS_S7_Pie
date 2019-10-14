.class public Lcom/samsung/android/knox/dlp/DLPPackageInfo;
.super Ljava/lang/Object;
.source "DLPPackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appIdentity:Lcom/samsung/android/knox/AppIdentity;

.field public extras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/dlp/DLPPackageInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/dlp/DLPPackageInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/dlp/DLPPackageInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/DLPPackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/AppIdentity;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    iput-object p2, p0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    iput-object v0, p0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

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

    iget-object v0, p0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
