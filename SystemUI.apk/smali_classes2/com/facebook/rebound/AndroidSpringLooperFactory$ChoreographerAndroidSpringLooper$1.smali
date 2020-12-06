.class Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;
.super Ljava/lang/Object;
.source "AndroidSpringLooperFactory.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;-><init>(Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 5

    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {v0}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$400(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    iget-object v0, v0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    iget-object v2, v2, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    iget-object v3, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {v3}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$500(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)J

    move-result-wide v3

    sub-long v3, v0, v3

    long-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/facebook/rebound/BaseSpringSystem;->loop(D)V

    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {v2, v0, v1}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$502(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;J)J

    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {v2}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$700(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {v3}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$600(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
