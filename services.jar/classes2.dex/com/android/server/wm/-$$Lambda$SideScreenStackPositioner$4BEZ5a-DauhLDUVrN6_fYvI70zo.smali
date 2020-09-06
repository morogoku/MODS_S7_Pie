.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenStackPositioner$4BEZ5a-DauhLDUVrN6_fYvI70zo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenStackPositioner;

.field private final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenStackPositioner;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenStackPositioner$4BEZ5a-DauhLDUVrN6_fYvI70zo;->f$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SideScreenStackPositioner$4BEZ5a-DauhLDUVrN6_fYvI70zo;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenStackPositioner$4BEZ5a-DauhLDUVrN6_fYvI70zo;->f$0:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenStackPositioner$4BEZ5a-DauhLDUVrN6_fYvI70zo;->f$1:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/SideScreenStackPositioner;->lambda$getStackMovementAnimator$0(Lcom/android/server/wm/SideScreenStackPositioner;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
