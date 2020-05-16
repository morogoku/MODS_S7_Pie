.class public final synthetic Lcom/samsung/android/systemui/sidescreen/-$$Lambda$GuideViewController$x2NMkp-rFzjMP-U18W19LlgiVVg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/sidescreen/GuideViewController;

.field private final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/sidescreen/GuideViewController;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$GuideViewController$x2NMkp-rFzjMP-U18W19LlgiVVg;->f$0:Lcom/samsung/android/systemui/sidescreen/GuideViewController;

    iput-object p2, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$GuideViewController$x2NMkp-rFzjMP-U18W19LlgiVVg;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$GuideViewController$x2NMkp-rFzjMP-U18W19LlgiVVg;->f$0:Lcom/samsung/android/systemui/sidescreen/GuideViewController;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$GuideViewController$x2NMkp-rFzjMP-U18W19LlgiVVg;->f$1:Landroid/graphics/Rect;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->lambda$scrollGuideView$0(Lcom/samsung/android/systemui/sidescreen/GuideViewController;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
