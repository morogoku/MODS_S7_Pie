.class public Lcom/android/server/enterprise/auditlog/IptablesLogging;
.super Ljava/lang/Object;
.source "IptablesLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;,
        Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEL_FORWARD_LOG:Ljava/lang/String; = "/system/bin/iptables -D FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final DEL_INPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -D INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final DEL_OUTPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -D OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final FORWARD_LOG:Ljava/lang/String; = "/system/bin/iptables -I FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final INPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -I INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final OUTPUT_LOG:Ljava/lang/String; = "/system/bin/iptables -I OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

.field private static final TAG:Ljava/lang/String; = "IptablesLogging"

.field private static mNetdService:Landroid/net/INetd;


# instance fields
.field private mIsLogging:Z

.field private mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    new-instance v0, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->start()V

    return-void
.end method

.method static synthetic access$000()Landroid/net/INetd;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->connectNativeNetdService()V

    return-void
.end method

.method private static connectNativeNetdService()V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "netd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    sget-object v1, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    if-nez v1, :cond_13

    return-void

    :cond_13
    sget-object v1, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1}, Landroid/net/INetd;->isAlive()Z

    move-result v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1b

    move v0, v1

    goto :goto_1f

    :catch_1b
    move-exception v1

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    :goto_1f
    if-nez v0, :cond_2c

    sget-boolean v1, Lcom/android/server/enterprise/auditlog/IptablesLogging;->DBG:Z

    if-eqz v1, :cond_2c

    const-string v1, "IptablesLogging"

    const-string v2, "Can\'t connect to NativeNetdService netd"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public isNetworkLogOn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    return v0
.end method

.method turnNetworkLogOff()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    if-eqz v0, :cond_33

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "input"

    const-string v3, "/system/bin/iptables -D INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "output"

    const-string v3, "/system/bin/iptables -D OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "forward"

    const-string v3, "/system/bin/iptables -D FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    :cond_33
    return-void
.end method

.method turnNetworkLogOn()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    if-nez v0, :cond_33

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "input"

    const-string v3, "/system/bin/iptables -I INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "output"

    const-string v3, "/system/bin/iptables -I OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "forward"

    const-string v3, "/system/bin/iptables -I FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG --wait"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    :cond_33
    return-void
.end method
