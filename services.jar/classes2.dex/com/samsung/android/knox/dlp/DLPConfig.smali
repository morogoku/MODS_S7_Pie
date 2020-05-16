.class public Lcom/samsung/android/knox/dlp/DLPConfig;
.super Ljava/lang/Object;
.source "DLPConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/dlp/DLPConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activateDLP:Z

.field public allowClipboard:Z

.field public allowDataNetwork:Z

.field public allowedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public expiryOffsetDays:I

.field public lockDLP:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/dlp/DLPConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/dlp/DLPConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConfig;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/DLPConfig;->readfromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/dlp/DLPConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/DLPConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readfromParcel(Landroid/os/Parcel;)V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowClipboard:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowDataNetwork:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->lockDLP:Z

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->activateDLP:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->expiryOffsetDays:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowedAppList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowedAppList:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowClipboard:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowDataNetwork:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->lockDLP:Z

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->activateDLP:Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->expiryOffsetDays:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowedAppList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
