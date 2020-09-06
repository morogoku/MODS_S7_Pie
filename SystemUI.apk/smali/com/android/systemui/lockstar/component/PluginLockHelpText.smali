.class public Lcom/android/systemui/lockstar/component/PluginLockHelpText;
.super Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;
.source "PluginLockHelpText.java"


# instance fields
.field private mHelpTextInvisible:I

.field private mHelpTextMarginBottom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->mHelpTextInvisible:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->mHelpTextMarginBottom:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockHelpText"

    const-string v1, "apply()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getHelpTextData()Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getHelpTextData()Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getHelpTextData()Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;->getHelpTextVisibility()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->mHelpTextInvisible:I

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getHelpTextData()Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;->getMarginBottom()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->mHelpTextMarginBottom:I

    :cond_1
    return-void
.end method

.method public getHelpTextMarginBottom()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->mHelpTextMarginBottom:I

    return v0
.end method

.method public isHelpTextInvisible()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->mHelpTextInvisible:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->mHelpTextInvisible:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    return-void
.end method
