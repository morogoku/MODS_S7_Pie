.class Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$1;
.super Ljava/lang/Object;
.source "KeyguardBottomHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startHintAnimation(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
