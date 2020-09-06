.class public Lcom/android/server/PKMService;
.super Landroid/service/tima/IPKMService$Stub;
.source "PKMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PKMService$PKMServiceHandler;,
        Lcom/android/server/PKMService$PKMTimerTask;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field private static final PACKAGE_SECURITY_LOGUPLOAD_AGENT:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final PKM_OPCODE_MEASUREMENT:I = 0xc350

.field private static final PKM_START_ID:I = 0x1

.field private static final PKM_SUBCODE_PKM:I = 0x2710

.field private static final PKM_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final PKM_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "PKMService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field private static final TIMA_MAX_EVENTS:I = 0x64

.field private static final mEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field mPKMServiceHandler:Lcom/android/server/PKMService$PKMServiceHandler;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private pkmThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PKMService;->DBG:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/service/tima/IPKMService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PKMService;->pkmThread:Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/PKMService;->makePKMHandler()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_12

    invoke-direct {p0}, Lcom/android/server/PKMService;->startPKMTimer()V

    :cond_12
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/PKMService;->DBG:Z

    return v0
.end method

.method private displayEvent(Ljava/lang/String;)V
    .registers 15

    sget-boolean v0, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "PKMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIMA MEASUREMENT Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-nez p1, :cond_1d

    return-void

    :cond_1d
    sget-object v0, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2c

    sget-object v0, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_2c
    const-string v0, " "

    :try_start_2e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3a} :catch_3c

    move-object v0, v1

    goto :goto_49

    :catch_3c
    move-exception v1

    sget-boolean v2, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v2, :cond_49

    const-string v2, "PKMService"

    const-string/jumbo v3, "toLocalString() exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    sget-object v1, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "TIMA_STATUS="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3b

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_235

    if-ne v3, v4, :cond_75

    goto/16 :goto_235

    :cond_75
    const-string v5, "0"

    const-string v6, "TIMA_STATUS="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    sget-boolean v2, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v2, :cond_a2

    const-string v2, "PKMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMA MEASUREMENT success status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    return-void

    :cond_a3
    const-string v5, "1"

    const-string v6, "TIMA_STATUS="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    sget-boolean v2, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v2, :cond_d0

    const-string v2, "PKMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMA Internal Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    return-void

    :cond_d1
    const-string v5, "MSG="

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const-string v3, ""

    if-eq v5, v4, :cond_21a

    if-ne v2, v4, :cond_e3

    goto/16 :goto_21a

    :cond_e3
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "MSG="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "lkm_modified"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_106

    const-string v6, "TIMA_STATUS="

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_135

    :cond_106
    const-string/jumbo v6, "seandroid_off"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_116

    const-string v6, "TIMA_STATUS="

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_135

    :cond_116
    const-string/jumbo v6, "kern_modified"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_126

    const-string v6, "TIMA_STATUS="

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_135

    :cond_126
    const-string/jumbo v6, "kern_metadata_modified"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20e

    const-string v6, "TIMA_STATUS="

    const/4 v7, 0x4

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_135
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMddHHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    :try_start_146
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string/jumbo v9, "mkdir -p /data/misc/tima"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_150} :catch_151

    goto :goto_159

    :catch_151
    move-exception v8

    const-string v9, "PKMService"

    const-string v10, "Failed to create /data/misc/tima"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_159
    :try_start_159
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "chmod 701 /data/misc/tima"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_162} :catch_163

    goto :goto_16b

    :catch_163
    move-exception v8

    const-string v9, "PKMService"

    const-string v10, "Failed to change permissions of /data/misc/tima"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16b
    :try_start_16b
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/misc/tima"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_184

    array-length v10, v9

    const/4 v11, 0x0

    :goto_17a
    if-ge v11, v10, :cond_184

    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_181} :catch_185

    add-int/lit8 v11, v11, 0x1

    goto :goto_17a

    :cond_184
    goto :goto_189

    :catch_185
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_189
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/misc/tima/tima.log."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_19a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chmod 640 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_1b2} :catch_1b3

    goto :goto_1ca

    :catch_1b3
    move-exception v9

    const-string v10, "PKMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to change permissions of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1ca
    sget-boolean v9, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v9, :cond_1d7

    const-string v9, "PKMService"

    const-string/jumbo v10, "displayEvent(): iBootCompleted==false"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d7
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "TIMA_LOG_FILE"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    const-string v10, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v11, "com.samsung.android.sm"

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10, v9}, Lcom/android/server/PKMService;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20d

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    const-string v12, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v11, v10, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_20d
    return-void

    :cond_20e
    sget-boolean v6, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v6, :cond_219

    const-string v6, "PKMService"

    const-string v7, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_219
    return-void

    :cond_21a
    :goto_21a
    sget-boolean v4, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v4, :cond_234

    const-string v4, "PKMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TIMA MEASUREMENT invalid result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_234
    return-void

    :cond_235
    :goto_235
    const-string v2, "PKMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMA MEASUREMENT invalid status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_12

    move-object v0, v2

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    return v2

    :cond_11
    return v3

    :catch_12
    move-exception v2

    return v3
.end method

.method private makePKMHandler()Z
    .registers 5

    sget-boolean v0, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "PKMService"

    const-string/jumbo v1, "makePKMHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PKMService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PKMService;->pkmThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/PKMService;->pkmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/android/server/PKMService;->pkmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v2, Lcom/android/server/PKMService$PKMServiceHandler;

    invoke-direct {v2, v1}, Lcom/android/server/PKMService$PKMServiceHandler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/PKMService;->mPKMServiceHandler:Lcom/android/server/PKMService$PKMServiceHandler;

    const/4 v0, 0x1

    const-string v2, "PKMService"

    const-string v3, "Success to get looper for PKMServiceHandler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_33
    const-string v2, "PKMService"

    const-string v3, "Failed to get looper for PKMServiceHandler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return v0
.end method

.method private startPKMTimer()V
    .registers 9

    sget-boolean v0, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "PKMService"

    const-string/jumbo v1, "startPKMTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/PKMService;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/android/server/PKMService$PKMTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PKMService$PKMTimerTask;-><init>(Lcom/android/server/PKMService;Lcom/android/server/PKMService$1;)V

    iput-object v0, p0, Lcom/android/server/PKMService;->mTimerTask:Ljava/util/TimerTask;

    iget-object v2, p0, Lcom/android/server/PKMService;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/android/server/PKMService;->mTimerTask:Ljava/util/TimerTask;

    const-wide/32 v4, 0x493e0

    const-wide/32 v6, 0x493e0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method


# virtual methods
.method public declared-synchronized checkEvent()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "PKMService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const v2, 0xc350

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lcom/android/server/PKMService;->timaCheckEvent(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-direct {p0, v2}, Lcom/android/server/PKMService;->displayEvent(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    monitor-exit p0

    return-object v2

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEventList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    return-object v0
.end method
