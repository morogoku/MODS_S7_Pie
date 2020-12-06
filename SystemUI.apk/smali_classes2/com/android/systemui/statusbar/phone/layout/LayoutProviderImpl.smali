.class public Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;
.super Ljava/lang/Object;
.source "LayoutProviderImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getButtonDistanceSize(I)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x3fbc28f5c0000000L    # 0.10999999940395355

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getButtonWidth(I)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x3fcc710cc0000000L    # 0.22220000624656677

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLayout(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f120247

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f120245

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpaceWidth(I)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x3fbc28f5c0000000L    # 0.10999999940395355

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method
