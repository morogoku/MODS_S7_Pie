.class Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$1;
.super Ljava/lang/Object;
.source "GestureDetectingView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$1;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$1;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->access$100(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-result-object v0

    const-string v1, "GestureDetectingView"

    const-string v2, "onComputeInternalInsets"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$1;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->access$100(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-result-object v0

    const-string v1, "GestureDetectingView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "region - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$1;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->access$200(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)Landroid/graphics/Region;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$1;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->access$200(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method
