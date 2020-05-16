.class public Lcom/android/systemui/bar/ScrollableBarItemView$ScrollableBarItemViewState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "ScrollableBarItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/ScrollableBarItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollableBarItemViewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/ScrollableBarItemView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bar/ScrollableBarItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/ScrollableBarItemView$ScrollableBarItemViewState;->this$0:Lcom/android/systemui/bar/ScrollableBarItemView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/bar/ScrollableBarItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableBarItemView$ScrollableBarItemViewState;->this$0:Lcom/android/systemui/bar/ScrollableBarItemView;

    invoke-static {v0}, Lcom/android/systemui/bar/ScrollableBarItemView;->access$000(Lcom/android/systemui/bar/ScrollableBarItemView;)V

    :cond_0
    return-void
.end method
