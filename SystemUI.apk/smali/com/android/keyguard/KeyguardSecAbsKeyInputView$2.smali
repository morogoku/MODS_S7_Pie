.class Lcom/android/keyguard/KeyguardSecAbsKeyInputView$2;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "KeyguardSecAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableDeviceWhenReachMaxFailed()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    return-void
.end method
