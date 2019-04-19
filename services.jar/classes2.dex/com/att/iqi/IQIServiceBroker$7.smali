.class Lcom/att/iqi/IQIServiceBroker$7;
.super Lcom/android/internal/content/PackageMonitor;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/IQIServiceBroker;->registerPackageMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .registers 6

    nop

    # getter for: Lcom/att/iqi/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$2000()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # invokes: Lcom/att/iqi/IQIServiceBroker;->appEnabled()Z
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$700(Lcom/att/iqi/IQIServiceBroker;)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    :cond_19
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "IQIServiceBroker"

    const-string v1, "Package modified, try to reconnect..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$800(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    # getter for: Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$800(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
