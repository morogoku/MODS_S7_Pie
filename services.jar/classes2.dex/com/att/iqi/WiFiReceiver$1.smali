.class Lcom/att/iqi/WiFiReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "WiFiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/WiFiReceiver;-><init>(Landroid/content/Context;Lcom/att/iqi/lib/IQIManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/WiFiReceiver;


# direct methods
.method constructor <init>(Lcom/att/iqi/WiFiReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/WiFiReceiver$1;->this$0:Lcom/att/iqi/WiFiReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver$1;->this$0:Lcom/att/iqi/WiFiReceiver;

    # invokes: Lcom/att/iqi/WiFiReceiver;->onStateChange(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/att/iqi/WiFiReceiver;->access$000(Lcom/att/iqi/WiFiReceiver;Landroid/content/Intent;)V

    return-void
.end method
