.class Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SideScreenDockedDividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;)Lcom/samsung/android/systemui/sidescreen/GuideViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->requestShow(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDockedDividerView;->onGuideViewVisibilityChanged(Z)V

    return-void
.end method
