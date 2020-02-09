.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$U9EMuj3M0cEHCXqaE6JqcjorLNE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;

.field private final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$U9EMuj3M0cEHCXqaE6JqcjorLNE;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$U9EMuj3M0cEHCXqaE6JqcjorLNE;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$U9EMuj3M0cEHCXqaE6JqcjorLNE;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$U9EMuj3M0cEHCXqaE6JqcjorLNE;->f$1:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenManagerService;->lambda$getSideScreenStacksMovementAnimator$6(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
