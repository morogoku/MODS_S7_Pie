.class public Lcom/android/systemui/globalactions/util/PowerItemWrapper;
.super Ljava/lang/Object;
.source "PowerItemWrapper.java"


# instance fields
.field private final mPowerItem:Lcom/samsung/android/knox/custom/PowerItem;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/PowerItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->mPowerItem:Lcom/samsung/android/knox/custom/PowerItem;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->mPowerItem:Lcom/samsung/android/knox/custom/PowerItem;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/PowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->mPowerItem:Lcom/samsung/android/knox/custom/PowerItem;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/PowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getIntentAction()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->mPowerItem:Lcom/samsung/android/knox/custom/PowerItem;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/PowerItem;->getIntentAction()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->mPowerItem:Lcom/samsung/android/knox/custom/PowerItem;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/PowerItem;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
