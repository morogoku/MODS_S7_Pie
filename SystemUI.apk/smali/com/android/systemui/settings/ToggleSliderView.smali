.class public Lcom/android/systemui/settings/ToggleSliderView;
.super Landroid/widget/RelativeLayout;
.source "ToggleSliderView.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/settings/ToggleSlider;


# instance fields
.field private mBrightnessAnimationBoundary:I

.field private mBrightnessAnimationNum:I

.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mDualSeekBarBackgroundColor:I

.field private mDualSeekBarForegroundColor:I

.field private mDualSeekBarThreshold:I

.field private mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mHighBrightnessModeText:Landroid/widget/TextView;

.field private mIsHighBrightnessMode:Z

.field private mIsMirror:Z

.field private mIsOutdoorMode:Z

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/ToggleSliderView;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowEyeStrainDialog:Z

.field private mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

.field private mSliderEnabled:Z

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsMirror:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mShowEyeStrainDialog:Z

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNum:I

    new-instance v1, Lcom/android/systemui/settings/ToggleSliderView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/ToggleSliderView$3;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v1, Lcom/android/systemui/settings/ToggleSliderView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/ToggleSliderView$4;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const v1, 0x7f0d01a6

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/R$styleable;->ToggleSliderView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const v3, 0x7f0a05ca

    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x7f0a0531

    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/settings/ToggleSeekBar;

    iput-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    new-instance v4, Lcom/android/systemui/settings/ToggleSliderView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/settings/ToggleSliderView$1;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v3, 0x7f0a02b3

    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/settings/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0532

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mHighBrightnessModeText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSystemBrightnessEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setSliderEnabled(Z)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isBrightnessEyeStrainDialogEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mShowEyeStrainDialog:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSliderView;->updateQSColoringResources(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/settings/ToggleSliderView;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/ToggleSliderView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarThreshold:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/ToggleSliderView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->updateHighBrightnessModeVisibility(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsMirror:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSliderView;->showEyeStrainDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/ToggleSliderView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNum:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/ToggleSliderView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationBoundary:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mShowEyeStrainDialog:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/settings/ToggleSliderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mShowEyeStrainDialog:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/settings/ToggleSliderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    return v0
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private initResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->semSetFluidEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->setDualSeekBarResources()V

    :cond_0
    return-void
.end method

.method private showEyeStrainDialog()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120a02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v2, 0x7f120d34

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v2, Lcom/android/systemui/settings/ToggleSliderView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/ToggleSliderView$2;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mEyeStrainDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    :cond_0
    return-void
.end method

.method private updateHighBrightnessModeVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mHighBrightnessModeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mHighBrightnessModeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSliderView;->mHighBrightnessModeText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSliderView;->mHighBrightnessModeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public applyOpenThemeResources()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x102000f

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, 0x1020000

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060048

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v7, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v7, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060049

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-direct {p0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/settings/ToggleSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setFluidColor(I)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSliderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getBrightnessAnimationNum()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNum:I

    return v0
.end method

.method public getSlider()Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public isBrightnessSliderEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui/settings/ToggleSlider;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->initMirrorViewState()V

    :cond_0
    return-void
.end method

.method public setBrightnessAnimationNum(I)V
    .locals 5

    move v0, p1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v1

    const/4 v2, 0x4

    div-int/2addr v1, v2

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationBoundary:I

    iget v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationBoundary:I

    const/4 v3, 0x3

    mul-int/2addr v1, v3

    if-ge v1, v0, :cond_0

    iput v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNum:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationBoundary:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    iput v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNum:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationBoundary:I

    if-ge v1, v0, :cond_2

    iput v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNum:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mBrightnessAnimationNum:I

    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setDualSeekBarResources()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v0

    int-to-double v1, v0

    const-wide v3, 0x4056800000000000L    # 90.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarThreshold:I

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarThreshold:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSeekBar;->semSetOverlapPointForDualColor(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarBackgroundColor:I

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060044

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarForegroundColor:I

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarBackgroundColor:I

    iget v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarForegroundColor:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/ToggleSeekBar;->setDualModeOverlapColor(II)V

    :cond_0
    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-nez p1, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setEyeStrainDialogEnabled(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mShowEyeStrainDialog:Z

    return-void
.end method

.method public setHighBrightnessMode(I)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    const-string v1, "ToggleSlider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHighBrightnessMode() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->updateHighBrightnessModeVisibility(I)V

    :cond_1
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/settings/ToggleSliderView;->mIsMirror:Z

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->updateQSColoringResources(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-void
.end method

.method public setSliderEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSliderEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsHighBrightnessMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/ToggleSliderView;->updateHighBrightnessModeVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateOutdoorMode(I)V
    .locals 3

    const-string v0, "ToggleSlider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOutdoorMode() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsOutdoorMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIsOutdoorMode:Z

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setSliderEnabled(Z)V

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 10

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x102000f

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/high16 v7, 0x1020000

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v1, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v1, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {v2, v7, v8}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v3}, Lcom/android/systemui/settings/ToggleSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v3, v0}, Lcom/android/systemui/settings/ToggleSeekBar;->setFluidColor(I)V

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/ToggleSliderView;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/settings/ToggleSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iput v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarForegroundColor:I

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mDualSeekBarBackgroundColor:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSliderView;->initResources()V

    :goto_0
    return-void
.end method
