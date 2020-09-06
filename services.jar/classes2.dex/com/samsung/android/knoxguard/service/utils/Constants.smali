.class public Lcom/samsung/android/knoxguard/service/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CSC_FEATURE_SUPPORT_KNOXGUARD:Ljava/lang/String; = "CscFeature_Knox_SupportKnoxGuard"

.field public static final EMMC_CID:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field public static final EMMC_NAME:Ljava/lang/String; = "/sys/block/mmcblk0/device/name"

.field public static final EMMC_UN:Ljava/lang/String; = "/sys/block/mmcblk0/device/unique_number"

.field public static final JSON_CLIENT_DATA_COMPANY:Ljava/lang/String; = "companyName"

.field public static final JSON_CLIENT_DATA_EMAIL:Ljava/lang/String; = "email"

.field public static final JSON_CLIENT_DATA_PHONE:Ljava/lang/String; = "phoneNumber"

.field public static final JSON_CLIENT_DATA_STATUS:Ljava/lang/String; = "status"

.field public static final KG_APP_TITLE:Ljava/lang/String; = "Payment Services"

.field public static final KG_LOG_URI:Landroid/net/Uri;

.field public static final KG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field public static final KG_PERMISSION:Ljava/lang/String; = "com.samsung.android.knoxguard.STATUS"

.field public static final KG_SERVICE_VERSION:I = 0xa21fe80

.field public static final MESSAGE_TYPE_COMPLETE:Ljava/lang/String; = "complete"

.field public static final RLC_STATE_CHECKING:Ljava/lang/String; = "Checking"

.field public static final RLC_STATE_COMPLETED:Ljava/lang/String; = "Completed"

.field public static final RLC_STATE_LOCKED:Ljava/lang/String; = "Locked"

.field public static final RLC_STATE_NORMAL:Ljava/lang/String; = "Normal"

.field public static final RLC_STATE_NULL:Ljava/lang/String; = ""

.field public static final RLC_STATE_PRENORMAL:Ljava/lang/String; = "Prenormal"

.field public static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final UFS_UN:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.samsung.android.kgclient.statusprovider/CONTENT_LOG"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->KG_LOG_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
