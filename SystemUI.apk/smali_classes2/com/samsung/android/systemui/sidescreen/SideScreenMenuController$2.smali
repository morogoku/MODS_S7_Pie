.class Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$2;
.super Ljava/lang/Object;
.source "SideScreenMenuController.java"

# interfaces
.implements Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->showDragAndDropGuide(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

.field final synthetic val$taskInfo:Landroid/app/ActivityManager$RecentTaskInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$2;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    iput-object p2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$2;->val$taskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(I)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController$2;->val$taskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->swapTaskWindowingModeFromSubWindowHandler(II)V

    return-void
.end method

.method public onDragStart()V
    .locals 0

    return-void
.end method
