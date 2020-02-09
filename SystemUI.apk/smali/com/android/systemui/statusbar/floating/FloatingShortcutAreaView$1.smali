.class Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FloatingShortcutAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$1;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintAuthenticated(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$1;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$000(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Lcom/android/systemui/statusbar/floating/ShortcutState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$1;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    new-instance v1, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$1;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    :cond_0
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$1;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$000(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Lcom/android/systemui/statusbar/floating/ShortcutState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$1;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$100(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    :cond_0
    return-void
.end method
