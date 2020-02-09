.class public Lcom/samsung/systemui/splugins/navigationbar/IconResource;
.super Ljava/lang/Object;
.source "IconResource.java"


# static fields
.field public static final UNDEFINED_RES_ID:I = -0x1


# instance fields
.field public mDarkDrawable:Landroid/graphics/drawable/Drawable;

.field public mDarkResId:I

.field public mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public mIsOldTint:Z

.field public mLightDrawable:Landroid/graphics/drawable/Drawable;

.field public mLightResId:I

.field public mNeedRtlCheck:Z


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iput p2, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iput p3, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    iput-boolean p4, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    iput-boolean p5, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIsOldTint:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iput-object p2, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean p4, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    iput-boolean p5, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIsOldTint:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iput v0, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    return-void
.end method
