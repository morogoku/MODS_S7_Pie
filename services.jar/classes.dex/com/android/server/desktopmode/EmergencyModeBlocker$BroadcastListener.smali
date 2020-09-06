.class Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyModeBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/EmergencyModeBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/EmergencyModeBlocker$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string/jumbo v0, "reason"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_24

    # getter for: Lcom/android/server/desktopmode/EmergencyModeBlocker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EMERGENCY_STATE_CHANGED reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    packed-switch v0, :pswitch_data_44

    goto :goto_41

    :pswitch_28
    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    # setter for: Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$102(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    const/16 v2, 0x2710

    # invokes: Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$300(Lcom/android/server/desktopmode/EmergencyModeBlocker;I)V

    goto :goto_41

    :pswitch_35
    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$102(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    # invokes: Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration()V
    invoke-static {v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$200(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    nop

    :goto_41
    return-void

    nop

    nop

    :pswitch_data_44
    .packed-switch 0x2
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_28
    .end packed-switch
.end method
