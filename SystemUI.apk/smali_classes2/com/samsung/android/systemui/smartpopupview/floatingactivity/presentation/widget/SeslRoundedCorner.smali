.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;
.super Ljava/lang/Object;
.source "SeslRoundedCorner.java"


# instance fields
.field mBottomLeftRound:Landroid/graphics/drawable/Drawable;

.field mBottomLeftRoundColor:I

.field mBottomRightRound:Landroid/graphics/drawable/Drawable;

.field mBottomRightRoundColor:I

.field mContext:Landroid/content/Context;

.field mIsMutate:Z

.field mIsStrokeRoundedCorner:Z

.field mRes:Landroid/content/res/Resources;

.field mRoundRadius:I

.field mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

.field mRoundStrokeHeight:I

.field mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

.field mRoundedCornerBounds:Landroid/graphics/Rect;

.field mRoundedCornerMode:I

.field mTopLeftRound:Landroid/graphics/drawable/Drawable;

.field mTopLeftRoundColor:I

.field mTopRightRound:Landroid/graphics/drawable/Drawable;

.field mTopRightRoundColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mIsMutate:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundRadius:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    iput-boolean p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->initRoundedCorner()V

    return-void
.end method

.method private initRoundedCorner()V
    .locals 7

    const/16 v0, 0x1a

    const-string v1, "SeslRoundedCorner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRoundedCorner, rounded corner with stroke = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v1, v0

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundRadius:I

    iget-boolean v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0602ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRoundColor:I

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRoundColor:I

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRoundColor:I

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080602

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080604

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0805fd

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0805ff

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mIsMutate:Z

    const v2, 0x7f0805fe

    const v3, 0x7f0805fc

    const v4, 0x7f080603

    const v5, 0x7f080601

    const v6, 0x7f0602ab

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRoundColor:I

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRoundColor:I

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRoundColor:I

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRoundColor:I

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRoundColor:I

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRoundColor:I

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080600

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f070753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundStrokeHeight:I

    return-void
.end method


# virtual methods
.method public drawRoundedCorner(Landroid/graphics/Canvas;)V
    .locals 7

    if-eqz p1, :cond_0

    const-string v0, "SeslRoundedCorner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawRoundedCorner canvas : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SeslRoundedCorner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawRoundedCorner canvas : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SeslRoundedCorner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawRoundedCorner canvas : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "SeslRoundedCorner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawRoundedCorner mRoundedCornerMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundStrokeHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundStrokeHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method

.method public setRoundedCornerColor(II)V
    .locals 3

    if-eqz p1, :cond_9

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_8

    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRoundColor:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRoundColor:I

    if-eq p2, v0, :cond_1

    :cond_0
    const-string v0, "SeslRoundedCorner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", top color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRoundColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRoundColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->initRoundedCorner()V

    :cond_3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    iput p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRoundColor:I

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_5

    iput p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRoundColor:I

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_6

    iput p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_7

    iput p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRoundColor:I

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no rounded corner on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRoundedCorners(I)V
    .locals 3

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_2

    iput p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mRoundedCornerMode:I

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/SeslRoundedCorner;->initRoundedCorner()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
