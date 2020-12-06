.class Lcom/android/keyguard/KeyguardKnoxGuardView$6;
.super Landroid/os/CountDownTimer;
.source "KeyguardKnoxGuardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardKnoxGuardView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$702(Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$300(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetState()V

    return-void
.end method

.method public onTick(J)V
    .locals 10

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    div-int/lit8 v1, v0, 0x3c

    div-int/lit8 v2, v1, 0x3c

    const-string v3, "KeyguardKnoxGuardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTick() secondsRemaining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v6, 0xe10

    if-le v0, v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$600(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100005

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$500()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v7, v8, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v6, 0x3c

    if-le v0, v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$600(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100006

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$500()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v7, v8, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$600(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardKnoxGuardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100007

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$500()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v7, v8, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$300(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    :goto_0
    return-void
.end method
