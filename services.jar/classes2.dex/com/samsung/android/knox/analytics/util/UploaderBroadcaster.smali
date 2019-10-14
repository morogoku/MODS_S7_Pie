.class public Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;
.super Ljava/lang/Object;
.source "UploaderBroadcaster.java"


# static fields
.field private static final BROADCAST_DB_SIZE_WARNING_TO_UPLOADER_ACTION:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.action.DB_SIZE_WARNING_USAGE_INTERNAL"

.field private static final BROADCAST_STATUS_TO_UPLOADER_ACTION:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.action.STATUS_INTERNAL"

.field private static final BROADCAST_STATUS_TO_UPLOADER_EXTRA_KEY:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.extra.STATUS_INTERNAL"

.field private static final BROADCAST_STATUS_TO_UPLOADER_OFF_FORCEFUL_VALUE:Ljava/lang/String; = "OFF_FORCEFUL"

.field private static final BROADCAST_STATUS_TO_UPLOADER_OFF_VALUE:Ljava/lang/String; = "OFF"

.field private static final BROADCAST_STATUS_TO_UPLOADER_ON_VALUE:Ljava/lang/String; = "ON"

.field private static final TAG:Ljava/lang/String;

.field public static final UPLOADER_COMPONENT:Ljava/lang/String; = "com.samsung.android.knox.analytics.uploader.servicemanager.ServiceReceiver"

.field public static final UPLOADER_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.analytics.uploader"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastAnalyticsStatus(Landroid/content/Context;ZZ)V
    .registers 7

    sget-object v0, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastAnalyticsStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.analytics.intent.action.STATUS_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.knox.analytics.uploader"

    const-string v3, "com.samsung.android.knox.analytics.uploader.servicemanager.ServiceReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.samsung.android.knox.analytics.intent.extra.STATUS_INTERNAL"

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->getStatusValue(ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static broadcastDbSizeWarning(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->TAG:Ljava/lang/String;

    const-string v1, "broadcastDbSizeWarning()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.analytics.intent.action.DB_SIZE_WARNING_USAGE_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.knox.analytics.uploader"

    const-string v3, "com.samsung.android.knox.analytics.uploader.servicemanager.ServiceReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static getStatusValue(ZZ)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_5

    const-string v0, "ON"

    return-object v0

    :cond_5
    if-eqz p1, :cond_a

    const-string v0, "OFF_FORCEFUL"

    return-object v0

    :cond_a
    const-string v0, "OFF"

    return-object v0
.end method
