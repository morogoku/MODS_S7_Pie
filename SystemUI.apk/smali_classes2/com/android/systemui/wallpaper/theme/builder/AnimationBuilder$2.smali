.class Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildAnimation(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

.field final synthetic val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$100(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)J

    move-result-wide v3

    sub-long v3, v1, v3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$200(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$102(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;J)J

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$000(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$302(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;I)I

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$300(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v3, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    add-int/lit8 v3, v3, -0x2

    if-ge v0, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v3, v0

    new-instance v4, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;I)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return-void
.end method
