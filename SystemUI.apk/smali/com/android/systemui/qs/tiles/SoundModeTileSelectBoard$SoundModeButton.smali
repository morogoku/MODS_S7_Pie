.class abstract Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;
.super Ljava/lang/Object;
.source "SoundModeTileSelectBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SoundModeButton"
.end annotation


# instance fields
.field protected mClickListener:Landroid/view/View$OnClickListener;

.field protected mDot:Landroid/widget/RadioButton;

.field protected mImageView:Landroid/widget/ImageView;

.field protected mParent:Landroid/view/ViewGroup;

.field protected mRingerModeProfile:I

.field protected mSALoggingDetail:Ljava/lang/String;

.field protected mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mClickListener:Landroid/view/View$OnClickListener;

    iput p3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mRingerModeProfile:I

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1209c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1209c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1209c7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mDot:Landroid/widget/RadioButton;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mDot:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public updateViews(I)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mRingerModeProfile:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    goto :goto_1

    :cond_1
    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    :goto_1
    move v1, v2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060271

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060272

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :goto_2
    move v1, v2

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mDot:Landroid/widget/RadioButton;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-eqz v0, :cond_4

    const-string v2, "SoundModeTileSelectBoard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detail Button Board of SoundModeTile update all views (selected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mSALoggingDetail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
