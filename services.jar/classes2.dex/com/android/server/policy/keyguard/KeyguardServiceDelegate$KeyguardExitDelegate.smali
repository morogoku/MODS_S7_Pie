.class final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;
.super Lcom/android/internal/policy/IKeyguardExitCallback$Stub;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardExitDelegate"
.end annotation


# instance fields
.field private mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

.field final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "KeyguardServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** onKeyguardExitResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") CALLED ****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    :cond_24
    return-void
.end method