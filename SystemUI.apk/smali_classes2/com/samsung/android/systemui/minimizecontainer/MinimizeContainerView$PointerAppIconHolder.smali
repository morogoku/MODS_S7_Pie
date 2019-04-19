.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;
.super Ljava/lang/Object;
.source "MinimizeContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointerAppIconHolder"
.end annotation


# instance fields
.field private mAppIconView:Landroid/widget/ImageView;

.field private mTaskId:I

.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->access$100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->mAppIconView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->mAppIconView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget p1, p2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->mTaskId:I

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->mAppIconView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getAppIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->mAppIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView$PointerAppIconHolder;->mTaskId:I

    return v0
.end method
