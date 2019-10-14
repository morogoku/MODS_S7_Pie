.class public Lcom/samsung/android/knox/analytics/activation/LicenseListener;
.super Landroid/content/BroadcastReceiver;
.source "LicenseListener.java"


# static fields
.field private static final ACTION_KNOX_LICENSE_DEACTIVATED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_LICENSE_DEACTIVATED"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "pkgName"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/activation/LicenseListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/LicenseListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/LicenseListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iput-object p2, p0, Lcom/samsung/android/knox/analytics/activation/LicenseListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/LicenseListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    if-eqz v0, :cond_3f

    const-string v0, "com.samsung.android.knox.intent.action.KNOX_LICENSE_DEACTIVATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/LicenseListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/LicenseListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    const-string/jumbo v1, "pkgName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLM(Ljava/lang/String;Z)V

    :cond_3f
    return-void
.end method

.method public register()V
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/LicenseListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "register()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.action.KNOX_LICENSE_DEACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/LicenseListener;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
