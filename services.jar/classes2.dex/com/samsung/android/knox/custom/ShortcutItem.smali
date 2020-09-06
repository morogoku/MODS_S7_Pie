.class public Lcom/samsung/android/knox/custom/ShortcutItem;
.super Ljava/lang/Object;
.source "ShortcutItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/ShortcutItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCellX:I

.field private final mCellX_KEY:Ljava/lang/String;

.field private mCellY:I

.field private final mCellY_KEY:Ljava/lang/String;

.field private mColour:I

.field private final mColour_KEY:Ljava/lang/String;

.field private mFolderPosition:I

.field private final mFolderPosition_KEY:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mIcon_KEY:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private final mIntent_KEY:Ljava/lang/String;

.field private mMoreItems:I

.field private final mMoreItems_KEY:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private final mName_KEY:Ljava/lang/String;

.field private mParent:Ljava/lang/String;

.field private final mParent_KEY:Ljava/lang/String;

.field private mShortcutType:I

.field private final mShortcutType_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/custom/ShortcutItem$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/ShortcutItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/ShortcutItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    const-string v1, "SHORTCUT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v1, "NAME"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v2, "FOLDER_POS"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v2, "INTENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v2, "PARENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v2, "CELLX"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v2, "CELLY"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v1, "COLOUR"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, "ICON"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;III)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    const-string v1, "SHORTCUT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v1, "NAME"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v2, "FOLDER_POS"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v2, "INTENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v2, "PARENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v2, "CELLX"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v2, "CELLY"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v1, "COLOUR"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, "ICON"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IIIILandroid/graphics/drawable/BitmapDrawable;I)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    const-string v1, "SHORTCUT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v1, "NAME"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v2, "FOLDER_POS"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v2, "INTENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v2, "PARENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v2, "CELLX"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v2, "CELLY"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v1, "COLOUR"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, "ICON"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    iput p8, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    iput-object p9, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput p10, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IILandroid/graphics/drawable/BitmapDrawable;I)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    const-string v1, "SHORTCUT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v1, "NAME"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v2, "FOLDER_POS"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v2, "INTENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v2, "PARENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v2, "CELLX"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v2, "CELLY"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v1, "COLOUR"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, "ICON"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    iput-object p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput p8, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;I)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    const-string v1, "SHORTCUT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v1, "NAME"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v2, "FOLDER_POS"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v2, "INTENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v2, "PARENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v2, "CELLX"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v2, "CELLY"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v1, "COLOUR"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, "ICON"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    iput-object p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    const-string v1, "SHORTCUT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v1, "NAME"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v2, "FOLDER_POS"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v2, "INTENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v2, "PARENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v2, "CELLX"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v2, "CELLY"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v1, "COLOUR"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, "ICON"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    iput-object p2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    iput p5, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    iput p6, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    iput p7, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShortcutItem"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    const-string v1, "SHORTCUT"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType_KEY:Ljava/lang/String;

    const-string v1, "NAME"

    iput-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    const-string v2, "FOLDER_POS"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition_KEY:Ljava/lang/String;

    const-string v2, "INTENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent_KEY:Ljava/lang/String;

    const-string v2, "PARENT"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    const-string v2, "CELLX"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    const-string v2, "CELLY"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    const-string v2, "COLOUR"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const-string v2, "ICON"

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon_KEY:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    const-string v0, "MORE"

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_95

    new-array v3, v2, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v3

    invoke-static {v3, v1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    :cond_95
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/custom/ShortcutItem$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/ShortcutItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCellX()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    return v0
.end method

.method public getCellY()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    return v0
.end method

.method public getColour()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    return v0
.end method

.method public getFolderPosition()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getIconArray()[B
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v0, :cond_1e

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    :cond_1e
    return-object v1

    :cond_1f
    return-object v1
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMoreItems()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutType()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ShortcutItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shortcutType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent"

    iget-object v2, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mShortcutType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mParent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mFolderPosition:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellX:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mCellY:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mColour:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/knox/custom/ShortcutItem;->mMoreItems:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ShortcutItem;->getIconArray()[B

    move-result-object v1

    if-eqz v1, :cond_45

    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_49

    :cond_45
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_49
    return-void
.end method
