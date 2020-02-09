.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;
.super Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
.source "PhoneStatusBarTransitions.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStatusBarBackgroundDrawable"
.end annotation


# instance fields
.field private mBarBackgroundDrawableAlpha:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->mBarBackgroundDrawableAlpha:F

    return-void
.end method


# virtual methods
.method public getBarBackgroundDrawableColoringColor(I)I
    .locals 4

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringBackgroundAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->mBarBackgroundDrawableAlpha:F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public needToGetQSColoringColor()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->mBarBackgroundDrawableAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFraction(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->mBarBackgroundDrawableAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->invalidateSelf()V

    return-void
.end method
