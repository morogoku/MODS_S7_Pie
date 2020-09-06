.class public Lcom/android/server/notification/DisplayToast;
.super Ljava/lang/Object;
.source "DisplayToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/DisplayToast$ToastDumpReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_MOBILE_DATA_FILES:Ljava/lang/String; = "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

.field private static final ACTION_GET_MOBILE_DATA_FILES:Ljava/lang/String; = "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

.field private static final ACTION_REQUEST_INTERNET_LOG:Ljava/lang/String; = "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

.field private static final ACTION_TOAST_DUMP_LOG:Ljava/lang/String; = "com.samsung.android.action.ACTION_TOAST_DUMP_LOG"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yy-MM-dd_HH:mm:ss"

.field private static final ENABLE_SAVE_FILE:Z = false

.field private static final EXTRA_TOAST_DUMP_CALLER_PACKAGE:Ljava/lang/String; = "sem_toast_caller_pkg"

.field private static final EXTRA_TOAST_DUMP_CALLER_UID:Ljava/lang/String; = "sem_toast_caller_uid"

.field private static final EXTRA_TOAST_DUMP_DATE:Ljava/lang/String; = "sem_toast_date"

.field private static final EXTRA_TOAST_DUMP_MESSAGE:Ljava/lang/String; = "sem_toast_message"

.field private static final LOG_FILE_PATH:Ljava/lang/String; = "/data/log/ToastLog.txt"

.field private static final MAX_TOAST_DUMP_COUNT:I = 0x1e

.field private static final MAX_TOAST_MESSAGE_LENGTH:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ToastLog"

.field private static sLogMsg:Lcom/android/server/notification/DisplayToast;


# instance fields
.field filter:Landroid/content/IntentFilter;

.field private logList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMessage:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field mReceiver:Lcom/android/server/notification/DisplayToast$ToastDumpReceiver;

.field private mUid:I

.field private outputContents:Ljava/lang/StringBuffer;

.field private sdfNow:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/notification/DisplayToast;

    invoke-direct {v0}, Lcom/android/server/notification/DisplayToast;-><init>()V

    sput-object v0, Lcom/android/server/notification/DisplayToast;->sLogMsg:Lcom/android/server/notification/DisplayToast;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DisplayToast;->logList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DisplayToast;->outputContents:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy-MM-dd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/DisplayToast;->sdfNow:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/DisplayToast;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/DisplayToast;->logList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/DisplayToast;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/DisplayToast;->dump()V

    return-void
.end method

.method private addToLogList(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/DisplayToast;->logList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/DisplayToast;->logList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/android/server/notification/DisplayToast;->logList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/notification/DisplayToast;->logList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_19
    iget-object v1, p0, Lcom/android/server/notification/DisplayToast;->logList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private dump()V
    .registers 2

    new-instance v0, Lcom/android/server/notification/DisplayToast$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DisplayToast$1;-><init>(Lcom/android/server/notification/DisplayToast;)V

    invoke-virtual {v0}, Lcom/android/server/notification/DisplayToast$1;->start()V

    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/android/server/notification/DisplayToast;->sLogMsg:Lcom/android/server/notification/DisplayToast;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/notification/DisplayToast;->outFile(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method private outFile(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/notification/DisplayToast;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/notification/DisplayToast;->mMessage:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/DisplayToast;->mUid:I

    iput-object p4, p0, Lcom/android/server/notification/DisplayToast;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/notification/DisplayToast;->sdfNow:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/DisplayToast;->sendIntentForToastDumpLog(Ljava/lang/String;)V

    return-void
.end method

.method private sendIntentForToastDumpLog(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.action.ACTION_TOAST_DUMP_LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sem_toast_date"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sem_toast_caller_pkg"

    iget-object v2, p0, Lcom/android/server/notification/DisplayToast;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sem_toast_caller_uid"

    iget v2, p0, Lcom/android/server/notification/DisplayToast;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/notification/DisplayToast;->mMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_33

    iget-object v2, p0, Lcom/android/server/notification/DisplayToast;->mMessage:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x63

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_33
    const-string/jumbo v2, "sem_toast_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_39
    iget-object v2, p0, Lcom/android/server/notification/DisplayToast;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_48

    :catch_3f
    move-exception v2

    const-string v3, "ToastLog"

    const-string/jumbo v4, "sendBroadcast fails!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    return-void
.end method
