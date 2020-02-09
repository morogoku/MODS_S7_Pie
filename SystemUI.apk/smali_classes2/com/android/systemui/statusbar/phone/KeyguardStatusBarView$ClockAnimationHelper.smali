.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClockAnimationHelper"
.end annotation


# instance fields
.field private mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mScrolledAmount:F

.field private mTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mScrolledAmount:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "KeyguardStatusBarView state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Clock TranslationAniamtor: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  Clock AlphaAnimator: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  Clock ScrolledAmount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mScrolledAmount:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    return-void
.end method

.method public updateAnimator()V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QSClock;->getWidth()I

    move-result v1

    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QSClock;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QSClock;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v2

    const-string v3, "translationX"

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    neg-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v3

    const-string v5, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateAnimatorAndPosition()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->updateAnimator()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mScrolledAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->updatePosition(F)V

    return-void
.end method

.method public updatePosition(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mScrolledAmount:F

    return-void
.end method
