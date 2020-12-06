.class Lcom/android/server/desktopmode/UiManager$UiServiceConnection;
.super Ljava/lang/Object;
.source "UiManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiServiceConnection"
.end annotation


# instance fields
.field private mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

.field final synthetic this$0:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/UiManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;Lcom/samsung/android/desktopmode/IDesktopModeUiService;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-object p1
.end method

.method public static synthetic lambda$onServiceConnected$0(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->this$0:Lcom/android/server/desktopmode/UiManager;

    # getter for: Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;
    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->access$400(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    move-result-object v0

    if-ne v0, p0, :cond_2b

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_16

    # getter for: Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/UiManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->this$0:Lcom/android/server/desktopmode/UiManager;

    const/4 v1, 0x2

    # setter for: Lcom/android/server/desktopmode/UiManager;->mConnectionState:I
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/UiManager;->access$602(Lcom/android/server/desktopmode/UiManager;I)I

    invoke-static {p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->this$0:Lcom/android/server/desktopmode/UiManager;

    # getter for: Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;
    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->access$900(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/PendingUiCommands;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/PendingUiCommands;->flushCommands()V

    :cond_2b
    return-void
.end method

.method public static synthetic lambda$onServiceDisconnected$1(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->this$0:Lcom/android/server/desktopmode/UiManager;

    # getter for: Lcom/android/server/desktopmode/UiManager;->mConnection:Lcom/android/server/desktopmode/UiManager$UiServiceConnection;
    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->access$400(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/UiManager$UiServiceConnection;

    move-result-object v0

    if-ne v0, p0, :cond_26

    # getter for: Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/UiManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->this$0:Lcom/android/server/desktopmode/UiManager;

    const/4 v1, 0x3

    # setter for: Lcom/android/server/desktopmode/UiManager;->mConnectionState:I
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/UiManager;->access$602(Lcom/android/server/desktopmode/UiManager;I)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->this$0:Lcom/android/server/desktopmode/UiManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/desktopmode/UiManager;->unbindUiService(Z)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/UiManager;->access$700(Lcom/android/server/desktopmode/UiManager;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->this$0:Lcom/android/server/desktopmode/UiManager;

    # invokes: Lcom/android/server/desktopmode/UiManager;->bindUiService()V
    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->access$800(Lcom/android/server/desktopmode/UiManager;)V

    :cond_26
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->this$0:Lcom/android/server/desktopmode/UiManager;

    # getter for: Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->access$300(Lcom/android/server/desktopmode/UiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$tldN6tB9h_f_Q_11nIzVIs3M2Ro;

    invoke-direct {v1, p0, p2}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$tldN6tB9h_f_Q_11nIzVIs3M2Ro;-><init>(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiServiceConnection;->this$0:Lcom/android/server/desktopmode/UiManager;

    # getter for: Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->access$300(Lcom/android/server/desktopmode/UiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$RscGpEt9cRojzQXjwD4VObNbmCw;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/-$$Lambda$UiManager$UiServiceConnection$RscGpEt9cRojzQXjwD4VObNbmCw;-><init>(Lcom/android/server/desktopmode/UiManager$UiServiceConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
