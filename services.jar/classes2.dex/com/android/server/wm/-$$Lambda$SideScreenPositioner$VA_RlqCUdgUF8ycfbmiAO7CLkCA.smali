.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenPositioner$VA_RlqCUdgUF8ycfbmiAO7CLkCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenPositioner;

.field private final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenPositioner;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenPositioner$VA_RlqCUdgUF8ycfbmiAO7CLkCA;->f$0:Lcom/android/server/wm/SideScreenPositioner;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SideScreenPositioner$VA_RlqCUdgUF8ycfbmiAO7CLkCA;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenPositioner$VA_RlqCUdgUF8ycfbmiAO7CLkCA;->f$0:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenPositioner$VA_RlqCUdgUF8ycfbmiAO7CLkCA;->f$1:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/SideScreenPositioner;->lambda$getScreenMovementAnimator$0(Lcom/android/server/wm/SideScreenPositioner;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
