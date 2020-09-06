.class Lcom/android/server/fingerprint/SemVisualEffectView$2;
.super Ljava/lang/Object;
.source "SemVisualEffectView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/SemVisualEffectView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/SemVisualEffectView;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/SemVisualEffectView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/SemVisualEffectView$2;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView$2;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView$2;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    # setter for: Lcom/android/server/fingerprint/SemVisualEffectView;->mPntBitmap:Landroid/graphics/Paint;
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/SemVisualEffectView;->access$102(Lcom/android/server/fingerprint/SemVisualEffectView;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/fingerprint/SemVisualEffectView$2;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/SemVisualEffectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView$2;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    const/4 v2, 0x1

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    # setter for: Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectSizePixel:I
    invoke-static {v1, v3}, Lcom/android/server/fingerprint/SemVisualEffectView;->access$202(Lcom/android/server/fingerprint/SemVisualEffectView;I)I

    iget-object v1, p0, Lcom/android/server/fingerprint/SemVisualEffectView$2;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/SemVisualEffectView;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/fingerprint/SemVisualEffectView$2;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/SemVisualEffectView;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/fingerprint/SemVisualEffectView$2;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    # getter for: Lcom/android/server/fingerprint/SemVisualEffectView;->mEffectSizePixel:I
    invoke-static {v3}, Lcom/android/server/fingerprint/SemVisualEffectView;->access$200(Lcom/android/server/fingerprint/SemVisualEffectView;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/fingerprint/SemVisualEffectView$2;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    # getter for: Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/server/fingerprint/SemVisualEffectView;->access$300(Lcom/android/server/fingerprint/SemVisualEffectView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/server/fingerprint/SemVisualEffectView$2;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    iget-object v4, p0, Lcom/android/server/fingerprint/SemVisualEffectView$2;->this$0:Lcom/android/server/fingerprint/SemVisualEffectView;

    # getter for: Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/server/fingerprint/SemVisualEffectView;->access$300(Lcom/android/server/fingerprint/SemVisualEffectView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lcom/android/server/fingerprint/SemVisualEffectView;->mBtmEffect:Landroid/graphics/Bitmap;
    invoke-static {v3, v2}, Lcom/android/server/fingerprint/SemVisualEffectView;->access$302(Lcom/android/server/fingerprint/SemVisualEffectView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_5f
    return-void
.end method
