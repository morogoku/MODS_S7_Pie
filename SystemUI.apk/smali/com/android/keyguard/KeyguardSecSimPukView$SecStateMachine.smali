.class Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;
.super Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.source "KeyguardSecSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecStateMachine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView;Lcom/android/keyguard/KeyguardSecSimPukView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->state:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->state:I

    const v0, 0x7f12051e

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->updateSim()V

    goto/16 :goto_0

    :cond_0
    iput v3, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->state:I

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f12054e

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f120601

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f1205d1

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_5

    iput v2, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->state:I

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_3

    const v0, 0x7f120600

    goto/16 :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v1, :cond_4

    const v0, 0x7f12053d

    goto :goto_0

    :cond_4
    const v0, 0x7f120725

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    const v0, 0x7f12054e

    goto :goto_0

    :cond_6
    const v0, 0x7f120605

    goto :goto_0

    :cond_7
    const v0, 0x7f1205d3

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_a

    iput v3, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->state:I

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_8

    const v0, 0x7f120604

    goto :goto_0

    :cond_8
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v1, :cond_9

    const v0, 0x7f120540

    goto :goto_0

    :cond_9
    const v0, 0x7f120726

    goto :goto_0

    :cond_a
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    const v0, 0x7f1205ff

    goto :goto_0

    :cond_b
    const v0, 0x7f120602

    goto :goto_0

    :cond_c
    const v0, 0x7f1205d4

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v1, v3, v3}, Lcom/android/keyguard/KeyguardSecSimPukView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_e

    const v1, 0x7f1205d3

    if-eq v0, v1, :cond_d

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_1

    :cond_d
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSecSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$200(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reset()V
    .locals 2

    const-string v0, "KeyguardSimPukView"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mPinText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mPukText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->state:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->handleSubInfoChangeIfNeeded()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    return-void
.end method
