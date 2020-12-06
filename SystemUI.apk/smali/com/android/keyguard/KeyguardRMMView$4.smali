.class Lcom/android/keyguard/KeyguardRMMView$4;
.super Landroid/os/CountDownTimer;
.source "KeyguardRMMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRMMView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRMMView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardRMMView;->resetState()V

    return-void
.end method

.method public onTick(J)V
    .locals 9

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    div-int/lit8 v1, v0, 0x3c

    const/4 v2, 0x0

    const/16 v3, 0x3c

    const/4 v4, 0x1

    if-le v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardRMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100012

    add-int/lit8 v7, v1, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardRMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardRMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100013

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-virtual {v5, v6, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
