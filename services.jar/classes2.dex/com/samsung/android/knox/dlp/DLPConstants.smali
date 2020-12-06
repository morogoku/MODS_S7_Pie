.class public Lcom/samsung/android/knox/dlp/DLPConstants;
.super Ljava/lang/Object;
.source "DLPConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dlp/DLPConstants$DLPCallerType;,
        Lcom/samsung/android/knox/dlp/DLPConstants$DLPActionType;,
        Lcom/samsung/android/knox/dlp/DLPConstants$Optype;
    }
.end annotation


# static fields
.field public static final APP:Ljava/lang/String; = "app"

.field public static final AUTOMATIC_TIME_ERROR:I = 0x111

.field public static final BLACKLISTED_ERROR:I = 0x101

.field public static final CALLER_PACKAGE_NAME:Ljava/lang/String; = "CALLER_PACKAGE_NAME"

.field public static final COMPONENT_KEY:Ljava/lang/String; = "component_type"

.field public static final COMPONENT_VAL:Ljava/lang/String; = "dlp_agent"

.field public static final DBG:Z

.field public static final DLP_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DLP_SERVICE_BIND_INTERNAL"

.field public static final DLP_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.dlp.service"

.field public static final DOWNLOAD_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.downloads"

.field public static final ENTERPRISE_DLP_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_DLP"

.field public static final EXTERNAL_STORAGE_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.externalstorage"

.field public static final FIXED_EXTENSIONS:[Ljava/lang/String;

.field public static final GENERAL_ERROR:I = 0x1010

.field public static final IO_ERROR:I = 0x10

.field public static final KNOX_VER_2_7_0:I = 0x10e

.field public static final KNOX_VER_2_8_0:I = 0x118

.field public static final MEDIA:Ljava/lang/String; = "media"

.field public static final MEDIA_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.media"

.field public static final NETWORK_ERROR:I = 0x1

.field public static final NO_VENDOR_ERROR:I = 0x110

.field public static final RULES_AVAILABLE_FROM_ERROR:I = 0x1000

.field public static final RULES_EXPIRED_AFTER_ERROR:I = 0x1001

.field public static final SDK_ERROR:I = 0x100

.field public static final SERVER_ERROR:I = 0x11

.field public static final TAG:Ljava/lang/String; = "DLP_"

.field public static final UNPROTECTED_FILE_ERROR:I = 0x1011


# direct methods
.method static constructor <clinit>()V
    .registers 27

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    nop

    :cond_9
    sput-boolean v1, Lcom/samsung/android/knox/dlp/DLPConstants;->DBG:Z

    const-string/jumbo v2, "xls"

    const-string/jumbo v3, "xlsx"

    const-string v4, "doc"

    const-string v5, "docx"

    const-string/jumbo v6, "ppt"

    const-string/jumbo v7, "pptx"

    const-string/jumbo v8, "pdf"

    const-string v9, "jpg"

    const-string v10, "jpeg"

    const-string/jumbo v11, "zip"

    const-string/jumbo v12, "mp4"

    const-string/jumbo v13, "txt"

    const-string v14, "asd"

    const-string/jumbo v15, "xlam"

    const-string v16, "htm"

    const-string v17, "html"

    const-string/jumbo v18, "mht"

    const-string v19, "eml"

    const-string/jumbo v20, "msg"

    const-string v21, "hwp"

    const-string v22, "gul"

    const-string/jumbo v23, "rtf"

    const-string/jumbo v24, "mysingle"

    const-string/jumbo v25, "png"

    const-string v26, "gif"

    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants;->FIXED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
