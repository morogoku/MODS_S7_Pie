.class Lcom/android/keyguard/KeyguardKnoxGuardView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardKnoxGuardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardKnoxGuardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$1;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteLockInfoChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$1;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$000(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$1;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$100(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$1;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$100(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$1;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$100(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
