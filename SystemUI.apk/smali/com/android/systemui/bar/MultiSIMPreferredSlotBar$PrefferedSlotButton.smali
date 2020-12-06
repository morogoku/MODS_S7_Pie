.class Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefferedSlotButton"
.end annotation


# instance fields
.field private mButtonGroup:Landroid/view/ViewGroup;

.field private mCarrierText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNetworkNameDefault:Ljava/lang/String;

.field private mNetworkNameSeparator:Ljava/lang/String;

.field private mSlotButtonImage:Landroid/widget/ImageView;

.field private mSlotButtonLine2OnlyText:Landroid/widget/TextView;

.field private mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

.field private mSlotButtonTextLine1:Landroid/widget/TextView;

.field private mSlotButtonTextLine2:Landroid/widget/TextView;

.field private mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

.field slotIconSettingId:Ljava/lang/String;

.field slotNameSettingId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0d0199

    invoke-virtual {v0, v2, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    iput-object p3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->setViews(Landroid/view/ViewGroup;)V

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$1;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton$2;-><init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->refreshSlotInfo()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mButtonGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDefaultSlotId(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;)I
    .locals 2

    sget-object v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$19;->$SwitchMap$com$android$systemui$bar$MultiSIMPreferredSlotBar$ButtonType:[I

    invoke-virtual {p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$700(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$400(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I

    move-result v0

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTitleString(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$19;->$SwitchMap$com$android$systemui$bar$MultiSIMPreferredSlotBar$ButtonType:[I

    invoke-virtual {p1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f1209e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f1209e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f1209ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshSlotInfo()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getDefaultSlotId(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    sget-object v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    if-le v0, v3, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    sget-object v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ne v1, v2, :cond_3

    if-gez v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v3, 0x7f1209ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    sget-object v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne v1, v2, :cond_4

    if-le v0, v3, :cond_4

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v3, 0x7f1209eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    sget-object v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v3, 0x7f1209e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$4000()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v3}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1200(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)[I

    move-result-object v3

    aget v3, v3, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getButtonTypeGroup()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mButtonGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public refreshLocale()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-direct {p0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getTitleString(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    sget-object v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    sget-object v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->refreshSlotInfo()V

    :cond_1
    return-void
.end method

.method protected setViews(Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mButtonGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a053c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    const v0, 0x7f0a053d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    const v0, 0x7f0a053e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    const v0, 0x7f0a053a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f0a053b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-direct {p0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getTitleString(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    invoke-direct {p0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->refreshSlotInfo()V

    return-void
.end method

.method public updateTextColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06024e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mType:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    sget-object v2, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$900(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$3000(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->checkCall()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$1800(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v1, v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v1, v1, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->mBarRootView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->mSlotButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    return-void
.end method
