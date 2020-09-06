.class public Lcom/android/server/enterprise/lso/LSOStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProvider;
.source "LSOStorageProvider.java"


# static fields
.field private static final INVALID_ROW_ID:I = -0x1

.field private static final LSO_FEATURE_OVERLAY:Ljava/lang/String; = "LOCKSCREEN_OVERLAY"

.field private static final LSO_FEATURE_WALLPAPER:Ljava/lang/String; = "LOCKSCREEN_WALLPAPER"

.field private static final LSO_ITEM_ATTRIBUTES:I = 0xf

.field private static final LSO_ITEM_BG_COLOR:I = 0x6

.field private static final LSO_ITEM_GRAVITY:I = 0x7

.field private static final LSO_ITEM_HEIGHT:I = 0x4

.field private static final LSO_ITEM_ID:I = 0x2

.field private static final LSO_ITEM_IMG_PATH:I = 0x9

.field private static final LSO_ITEM_IMG_URL:I = 0xc

.field private static final LSO_ITEM_LAYER:I = 0x10

.field private static final LSO_ITEM_ORIENTATION:I = 0xd

.field private static final LSO_ITEM_PACKAGE_NAME:I = 0xe

.field private static final LSO_ITEM_PARENT_ID:I = 0x11

.field private static final LSO_ITEM_POLLING_INTERVAL:I = 0x8

.field private static final LSO_ITEM_ROWID:I = 0x0

.field private static final LSO_ITEM_SCALE_TYPE:I = 0xa

.field private static final LSO_ITEM_TEXT:I = 0x9

.field private static final LSO_ITEM_TXT_COLOR:I = 0x8

.field private static final LSO_ITEM_TXT_SIZE:I = 0xb

.field private static final LSO_ITEM_TXT_STYLE:I = 0xa

.field private static final LSO_ITEM_TYPE:I = 0x1

.field private static final LSO_ITEM_WEIGHT:I = 0x5

.field private static final LSO_ITEM_WIDTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LSOStorageProvider"

.field private static final tblColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    const-string v0, "Item_RowId"

    const-string v1, "Item_Type"

    const-string v2, "Item_Id"

    const-string v3, "Item_Width"

    const-string v4, "Item_Height"

    const-string v5, "Item_Weight"

    const-string v6, "Item_Bg_Color"

    const-string v7, "Item_Gravity"

    const-string v8, "Item_TxtColor_or_PollingInterval"

    const-string v9, "Item_Txt_or_ImgPath"

    const-string v10, "Item_TxtStyle_or_ScaleType"

    const-string v11, "Item_TxtSize"

    const-string v12, "Item_Url"

    const-string v13, "Item_Orientation"

    const-string v14, "Item_PackageName"

    const-string v15, "Item_Attributes"

    const-string v16, "Item_Layer"

    const-string v17, "Item_ParentId"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private constructContentValues(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Landroid/content/ContentValues;
    .registers 21

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v5, 0x11

    aget-object v3, v3, v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getUpdatedFields()[I

    move-result-object v3

    if-eqz v3, :cond_1d2

    array-length v6, v3

    if-nez v6, :cond_3b

    goto/16 :goto_1d2

    :cond_3b
    const/4 v6, 0x0

    move v7, v2

    move v2, v6

    :goto_3e
    array-length v8, v3

    if-ge v2, v8, :cond_1ce

    if-nez v7, :cond_1ce

    aget v8, v3, v2

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1b8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1a7

    if-eq v8, v4, :cond_196

    const/16 v10, 0x20

    if-eq v8, v10, :cond_185

    const/16 v10, 0x40

    if-eq v8, v10, :cond_173

    packed-switch v8, :pswitch_data_1d4

    const/16 v8, 0xa

    const/16 v10, 0x200

    const/16 v11, 0x9

    const/16 v12, 0x100

    const/16 v13, 0x80

    packed-switch v1, :pswitch_data_1dc

    const/4 v4, 0x1

    const-string v7, "LSOStorageProvider"

    const-string/jumbo v8, "unknown LSOItem"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v4

    goto/16 :goto_1c8

    :pswitch_72
    move-object/from16 v8, p1

    check-cast v8, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    aget v9, v3, v2

    if-eq v9, v13, :cond_7b

    goto :goto_88

    :cond_7b
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0xe

    aget-object v9, v9, v10

    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->getWidget()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_88
    goto/16 :goto_1c8

    :pswitch_8a
    move-object/from16 v8, p1

    check-cast v8, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    aget v9, v3, v2

    if-eq v9, v13, :cond_a1

    if-eq v9, v12, :cond_95

    goto :goto_ba

    :cond_95
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v9, v9, v11

    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    :cond_a1
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0xd

    aget-object v9, v9, v10

    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getOrientation()Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    if-ne v10, v11, :cond_b1

    move v10, v6

    goto :goto_b3

    :cond_b1
    nop

    move v10, v5

    :goto_b3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_ba
    goto/16 :goto_1c8

    :pswitch_bc
    move-object/from16 v14, p1

    check-cast v14, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    aget v4, v3, v2

    if-eq v4, v13, :cond_f6

    if-eq v4, v12, :cond_d9

    if-eq v4, v10, :cond_c9

    goto :goto_102

    :cond_c9
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v14}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getScaleTypeAsInteger()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_102

    :cond_d9
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v8, 0xc

    aget-object v4, v4, v8

    invoke-virtual {v14}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v14}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getPollingInterval()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_102

    :cond_f6
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v11

    invoke-virtual {v14}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_102
    goto/16 :goto_1c8

    :pswitch_104
    move-object/from16 v4, p1

    check-cast v4, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    aget v14, v3, v2

    if-eq v14, v13, :cond_147

    if-eq v14, v12, :cond_137

    if-eq v14, v10, :cond_125

    const/16 v9, 0x400

    if-eq v14, v9, :cond_115

    goto :goto_153

    :cond_115
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v8, v9, v8

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextStyle()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_153

    :cond_125
    sget-object v8, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSizeAsFloat()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_153

    :cond_137
    sget-object v8, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_153

    :cond_147
    sget-object v8, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_153
    goto/16 :goto_1c8

    :pswitch_155
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v4, v4, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1c8

    :pswitch_166
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c8

    :cond_173
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v8, 0xf

    aget-object v4, v4, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1c8

    :cond_185
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v4, v4, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getGravity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1c8

    :cond_196
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v4, v4, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getBgColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1c8

    :cond_1a7
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v4, v4, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWeight()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1c8

    :cond_1b8
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    nop

    :goto_1c8
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x10

    goto/16 :goto_3e

    :cond_1ce
    if-eqz v7, :cond_1d1

    const/4 v0, 0x0

    :cond_1d1
    return-object v0

    :cond_1d2
    :goto_1d2
    return-object v0

    nop

    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_166
        :pswitch_155
    .end packed-switch

    :pswitch_data_1dc
    .packed-switch 0x2
        :pswitch_104
        :pswitch_bc
        :pswitch_8a
        :pswitch_72
    .end packed-switch
.end method

.method private deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 8

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p2, :cond_24

    const-string v1, "LSOStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_24
    const-string v1, "LSOStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method private getAdminUid(Ljava/lang/String;)I
    .registers 6

    const-string v0, "ADMIN_REF"

    const-string/jumbo v1, "policyName"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "LSOStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - Configured admin UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 9

    const-string v0, "LSOStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_53

    const-string v3, "LSOStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Failed to insert record - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_53
    return-wide v1
.end method

.method private loadContainerData(Lcom/samsung/android/knox/lockscreen/LSOItemContainer;Landroid/database/Cursor;)V
    .registers 12

    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    :cond_17
    if-eqz v1, :cond_1e

    sget-object v2, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setOrientation(Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;)V

    :cond_1e
    const-string v2, "LSOStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadContainerData -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "Item_ParentId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "LOCKSCREEN_OVERLAY"

    sget-object v6, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v4, v7}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_57

    return-void

    :cond_57
    :try_start_57
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_5b
    .catch Landroid/database/SQLException; {:try_start_57 .. :try_end_5b} :catch_86
    .catchall {:try_start_57 .. :try_end_5b} :catchall_84

    if-nez v6, :cond_63

    if-eqz v5, :cond_62

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_62
    return-void

    :cond_63
    nop

    :goto_64
    :try_start_64
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7e

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-byte v2, v6

    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemCreator;->createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v6

    if-nez v6, :cond_77

    goto :goto_64

    :cond_77
    invoke-direct {p0, v6, v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V

    invoke-virtual {p1, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z
    :try_end_7d
    .catch Landroid/database/SQLException; {:try_start_64 .. :try_end_7d} :catch_86
    .catchall {:try_start_64 .. :try_end_7d} :catchall_84

    goto :goto_64

    :cond_7e
    if-eqz v5, :cond_a4

    :goto_80
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_a4

    :catchall_84
    move-exception v2

    goto :goto_a5

    :catch_86
    move-exception v2

    :try_start_87
    const-string v6, "LSOStorageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occurred accessing Enterprise db "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_87 .. :try_end_a1} :catchall_84

    if-eqz v5, :cond_a4

    goto :goto_80

    :cond_a4
    :goto_a4
    return-void

    :goto_a5
    if-eqz v5, :cond_aa

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_aa
    throw v2
.end method

.method private loadImageData(Lcom/samsung/android/knox/lockscreen/LSOItemImage;Landroid/database/Cursor;)V
    .registers 8

    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setScaleType(I)V

    :cond_1d
    const/16 v2, 0x8

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_35

    int-to-long v3, v2

    invoke-virtual {p1, v0, v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setURL(Ljava/lang/String;J)V

    :cond_35
    const-string v1, "LSOStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadImageData -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V
    .registers 9

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    :cond_a
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, -0x63

    if-eq v1, v2, :cond_16

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    :cond_16
    const/4 v3, 0x4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v1, v2, :cond_20

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    :cond_20
    const/4 v2, 0x5

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2d

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    :cond_2d
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_38

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setBgColor(I)V

    :cond_38
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5a

    const-string v3, "LSOStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadItemData -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5a
    const/4 v4, 0x7

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v1, v3, :cond_64

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    :cond_64
    const/16 v3, 0xf

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-eqz v3, :cond_73

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->fromByteArray([B)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttrs(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    :cond_73
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v4

    packed-switch v4, :pswitch_data_98

    goto :goto_97

    :pswitch_7b
    move-object v4, p1

    check-cast v4, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {p0, v4, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadWidgetData(Lcom/samsung/android/knox/lockscreen/LSOItemWidget;Landroid/database/Cursor;)V

    goto :goto_97

    :pswitch_82
    move-object v4, p1

    check-cast v4, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {p0, v4, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadContainerData(Lcom/samsung/android/knox/lockscreen/LSOItemContainer;Landroid/database/Cursor;)V

    goto :goto_97

    :pswitch_89
    move-object v4, p1

    check-cast v4, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {p0, v4, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadImageData(Lcom/samsung/android/knox/lockscreen/LSOItemImage;Landroid/database/Cursor;)V

    goto :goto_97

    :pswitch_90
    move-object v4, p1

    check-cast v4, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {p0, v4, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadTextData(Lcom/samsung/android/knox/lockscreen/LSOItemText;Landroid/database/Cursor;)V

    nop

    :goto_97
    return-void

    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_90
        :pswitch_89
        :pswitch_82
        :pswitch_7b
    .end packed-switch
.end method

.method private loadTextData(Lcom/samsung/android/knox/lockscreen/LSOItemText;Landroid/database/Cursor;)V
    .registers 9

    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setText(Ljava/lang/String;)V

    :cond_11
    const/16 v1, 0x8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextColor(I)V

    :cond_1d
    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v1, v2, :cond_28

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    :cond_28
    const/16 v2, 0xb

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_36

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(F)V

    :cond_36
    const-string v3, "LSOStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadTextData -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadWidgetData(Lcom/samsung/android/knox/lockscreen/LSOItemWidget;Landroid/database/Cursor;)V
    .registers 7

    const/16 v0, 0xe

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    :cond_11
    const-string v1, "LSOStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadWidgetData -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->constructContentValues(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Landroid/content/ContentValues;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v2, "LSOStorageProvider"

    const-string v3, "Cannot construct content values"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_12
    const-string v2, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1f

    return v0

    :cond_1f
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_28

    const/4 v4, 0x1

    return v4

    :cond_28
    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v5, p1

    check-cast v5, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    const/4 v6, 0x0

    const/4 v6, 0x0

    :goto_2f
    invoke-virtual {v5}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v7

    if-ge v6, v7, :cond_42

    if-eqz v4, :cond_42

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v7

    invoke-direct {p0, v7, p2, v2, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_42
    if-nez v4, :cond_62

    const-string v7, "LSOStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to store LSOItemData for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " with ParendId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    return v4
.end method

.method private updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    const-string v0, "LSOStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert/Update record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "LSOStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of rows updated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v1, :cond_58

    const-string v2, "LSOStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Failed to insert record - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_58
    return v1
.end method

.method private wipeLayerData(I)V
    .registers 6

    if-nez p1, :cond_8

    const-string v0, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->remove(Ljava/lang/String;)Z

    goto :goto_1d

    :cond_8
    const-string v0, "Item_Layer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    :goto_1d
    const-string v0, "LSOStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wipeLayerData() - LOCKSCREEN_OVERLAY - cleaned : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdminPref()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .registers 6

    const-string v0, "accountObject"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "policyName"

    const-string v3, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ADMIN_REF"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1d

    return-object v3

    :cond_1d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->fromByteArray([B)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v4

    :cond_2f
    return-object v4
.end method

.method public getCount(Ljava/lang/String;)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_20

    return v2

    :cond_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v3, "LSOStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getOverlay(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "Item_ParentId"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Item_Layer"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_1b
    const-string v4, "LOCKSCREEN_OVERLAY"

    sget-object v5, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v0, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    if-nez v1, :cond_34

    const-string v4, "LSOStorageProvider"

    const-string v5, "No record found in LOCKSCREEN_OVERLAY"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_2d} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2d} :catch_71
    .catchall {:try_start_1b .. :try_end_2d} :catchall_6f

    nop

    if-eqz v1, :cond_33

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_33
    return-object v2

    :cond_34
    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_48

    const-string v4, "LSOStorageProvider"

    const-string v5, "No record found in LOCKSCREEN_OVERLAY"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/database/SQLException; {:try_start_34 .. :try_end_41} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_41} :catch_71
    .catchall {:try_start_34 .. :try_end_41} :catchall_6f

    nop

    if-eqz v1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_47
    return-object v2

    :cond_48
    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemCreator;->createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v5

    move-object v3, v5

    if-nez v3, :cond_66

    const-string v5, "LSOStorageProvider"

    const-string v6, "Invalid Item type"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Landroid/database/SQLException; {:try_start_48 .. :try_end_5f} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5f} :catch_71
    .catchall {:try_start_48 .. :try_end_5f} :catchall_6f

    nop

    if-eqz v1, :cond_65

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_65
    return-object v2

    :cond_66
    :try_start_66
    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V
    :try_end_69
    .catch Landroid/database/SQLException; {:try_start_66 .. :try_end_69} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_71
    .catchall {:try_start_66 .. :try_end_69} :catchall_6f

    if-eqz v1, :cond_9b

    :goto_6b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_9b

    :catchall_6f
    move-exception v2

    goto :goto_9c

    :catch_71
    move-exception v2

    :try_start_72
    const-string v4, "LSOStorageProvider"

    const-string/jumbo v5, "getOverlay() falied "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_9b

    goto :goto_6b

    :catch_7d
    move-exception v2

    const-string v4, "LSOStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred accessing Enterprise db "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_72 .. :try_end_98} :catchall_6f

    if-eqz v1, :cond_9b

    goto :goto_6b

    :cond_9b
    :goto_9b
    return-object v3

    :goto_9c
    if-eqz v1, :cond_a1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a1
    throw v2
.end method

.method public getOverlayAdminUid()I
    .registers 2

    const-string v0, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWallpaperAdminUid()I
    .registers 2

    const-string v0, "LOCKSCREEN_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const-string v0, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCount(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public resetOverlayData(I)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    const-string v0, "LOCKSCREEN_OVERLAY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    :cond_17
    const-string v1, "LSOStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetOverlayData() LOCKSCREEN_OVERLAY - resetted layer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetWallpaperData()V
    .registers 4

    const-string v0, "LOCKSCREEN_WALLPAPER"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    const-string v1, "LSOStorageProvider"

    const-string/jumbo v2, "resetWallpaperData() LOCKSCREEN_WALLPAPER - resetted"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOverlayData(JLcom/samsung/android/knox/lockscreen/LSOItemData;ILcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-eqz p3, :cond_56

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_56

    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    const-wide/16 v3, 0x0

    invoke-direct {p0, p3, p4, v3, v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1c

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    goto :goto_55

    :cond_1c
    int-to-long v5, v2

    cmp-long v5, v5, p1

    if-eqz v5, :cond_55

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "policyName"

    const-string v7, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_42

    const-string v6, "accountObject"

    invoke-virtual {p5}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_42
    const-string v6, "ADMIN_REF"

    invoke-direct {p0, v6, v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    move v0, v4

    :goto_4f
    move v3, v0

    if-nez v3, :cond_55

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    :cond_55
    :goto_55
    return v3

    :cond_56
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWallpaperData(JLjava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-eqz p3, :cond_35

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_35

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "policyName"

    const-string v5, "LOCKSCREEN_WALLPAPER"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "ADMIN_REF"

    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    :cond_34
    return v0

    :cond_35
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAdminPref(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_11

    const-string v1, "accountObject"

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_19

    :cond_11
    const-string v1, "accountObject"

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_19
    const-string/jumbo v1, "policyName=?"

    const-string v2, "LOCKSCREEN_OVERLAY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "ADMIN_REF"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    return v3
.end method
