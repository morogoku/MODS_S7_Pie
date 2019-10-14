.class Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;
.super Landroid/view/animation/BaseInterpolator;
.source "KeyguardBottomHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaInterpolater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const v0, 0x3f3a1cac    # 0.727f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Landroid/view/animation/Interpolator;

    move-result-object v1

    sub-float v0, p1, v0

    const v2, 0x3e8b4396    # 0.272f

    div-float/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
