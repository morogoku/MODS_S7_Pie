.class Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    return-void
.end method


# virtual methods
.method public onFocusStackChanged(Landroid/app/ActivityManager$StackInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/Divider;->access$1302(Lcom/android/systemui/stackdivider/Divider;Landroid/app/ActivityManager$StackInfo;)Landroid/app/ActivityManager$StackInfo;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$300(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->onFocusStackChanged(Landroid/app/ActivityManager$StackInfo;)V

    return-void
.end method

.method public onMultiWindowEnableChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSnapWindowVisibilityChanged(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$300(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->onSnapWindowVisibilityChanged(Z)V

    return-void
.end method
