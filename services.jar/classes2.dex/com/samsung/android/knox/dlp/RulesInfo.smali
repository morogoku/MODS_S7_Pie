.class public Lcom/samsung/android/knox/dlp/RulesInfo;
.super Ljava/lang/Object;
.source "RulesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTIVATE:Ljava/lang/String; = "Activate"

.field public static final AUDIT_EVENT:Ljava/lang/String; = "AUDIT"

.field public static final CLIPBOARD:Ljava/lang/String; = "Clipboard"

.field public static final CREATE:I = 0x1

.field public static final CREATE_EVENT:Ljava/lang/String; = "CREATE"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/dlp/RulesInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DLP_FILE_ACCESS_DENIED:I = 0x1b

.field public static final DLP_FILE_CLOSED:I = 0x16

.field public static final DLP_FILE_EXPIRED:I = 0x19

.field public static final DLP_FILE_INIT:I = 0x17

.field public static final DLP_FILE_INIT_RESTRICTED:I = 0x18

.field public static final DLP_FILE_OPENED:I = 0x15

.field public static final DLP_FILE_OPENED_CREATOR:I = 0x1c

.field public static final DLP_FILE_REMOVE_MEDIA:I = 0x1d

.field public static final DLP_FILE_RENAME:I = 0x1a

.field public static final DOMAINS:Ljava/lang/String; = "Domains"

.field public static final EXPIRED:I = 0x8

.field public static final EXPIRED_EVENT:Ljava/lang/String; = "EXPIRED"

.field public static final EXPIRYAFTER:Ljava/lang/String; = "ExpiryAfter"

.field public static final EXTENSIONS:Ljava/lang/String; = "Extensions"

.field public static final LOCK:Ljava/lang/String; = "Lock"

.field public static final OPEN:I = 0x2

.field public static final OPEN_EVENT:Ljava/lang/String; = "OPEN"

.field public static final RENAME:I = 0x4

.field public static final RENAME_EVENT:Ljava/lang/String; = "RENAME"

.field public static final SCREENCAPTURE:Ljava/lang/String; = "ScreenCapture"

.field public static final TYPE_APP:Ljava/lang/String; = "Type"

.field public static final TYPE_APP_CONSUMER:I = 0x1

.field public static final TYPE_APP_CREATOR:I = 0x0

.field public static final UNAUTHORIZED:I = 0x10

.field public static final UNAUTHORIZED_EVENT:Ljava/lang/String; = "UNAUTHORIZED"


# instance fields
.field private canScreenCapture:Z

.field private isOwner:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/dlp/RulesInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/dlp/RulesInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dlp/RulesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dlp/RulesInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/dlp/RulesInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/RulesInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isCanScreenCapture()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RulesInfo;->canScreenCapture:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RulesInfo;->canScreenCapture:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/RulesInfo;->isOwner:Z

    return-void
.end method

.method public setCanScreenCapture(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RulesInfo;->canScreenCapture:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RulesInfo;->canScreenCapture:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/knox/dlp/RulesInfo;->isOwner:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
