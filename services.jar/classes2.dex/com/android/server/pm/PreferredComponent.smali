.class public Lcom/android/server/pm/PreferredComponent;
.super Ljava/lang/Object;
.source "PreferredComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreferredComponent$Callbacks;
    }
.end annotation


# static fields
.field private static final ATTR_ALWAYS:Ljava/lang/String; = "always"

.field private static final ATTR_MATCH:Ljava/lang/String; = "match"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SET:Ljava/lang/String; = "set"

.field private static final TAG_SET:Ljava/lang/String; = "set"


# instance fields
.field public mAlways:Z

.field private final mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mMatch:I

.field private mParseError:Ljava/lang/String;

.field final mSetClasses:[Ljava/lang/String;

.field final mSetComponents:[Ljava/lang/String;

.field final mSetPackages:[Ljava/lang/String;

.field final mShortComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    const/high16 v0, 0xfff0000

    and-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    iput-object p4, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    iput-boolean p5, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-eqz p3, :cond_52

    array-length v1, p3

    new-array v2, v1, [Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v1, :cond_4b

    aget-object v6, p3, v5

    if-nez v6, :cond_2e

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    return-void

    :cond_2e
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_4b
    iput-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    goto :goto_58

    :cond_52
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    :goto_58
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad activity name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    :cond_36
    const-string/jumbo v3, "match"

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_47

    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_48

    :cond_47
    move v6, v5

    :goto_48
    iput v6, v0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    const-string/jumbo v6, "set"

    invoke-interface {v1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_58

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    :cond_58
    const-string v7, "always"

    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_66

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_67

    :cond_66
    move v9, v8

    :goto_67
    iput-boolean v9, v0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-lez v5, :cond_6e

    new-array v9, v5, [Ljava/lang/String;

    goto :goto_6f

    :cond_6e
    move-object v9, v4

    :goto_6f
    if-lez v5, :cond_74

    new-array v10, v5, [Ljava/lang/String;

    goto :goto_75

    :cond_74
    move-object v10, v4

    :goto_75
    if-lez v5, :cond_7a

    new-array v11, v5, [Ljava/lang/String;

    goto :goto_7b

    :cond_7a
    move-object v11, v4

    :goto_7b
    const/4 v12, 0x0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    :goto_80
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v15, v14

    if-eq v14, v8, :cond_162

    const/4 v14, 0x3

    if-ne v15, v14, :cond_95

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v13, :cond_91

    goto :goto_95

    :cond_91
    move-object/from16 v16, v3

    goto/16 :goto_164

    :cond_95
    :goto_95
    if-eq v15, v14, :cond_158

    const/4 v8, 0x4

    if-ne v15, v8, :cond_9f

    nop

    move-object/from16 v16, v3

    goto/16 :goto_15a

    :cond_9f
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v14, "set"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_130

    const-string/jumbo v14, "name"

    invoke-interface {v1, v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d1

    iget-object v4, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v4, :cond_ce

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No name in set tag in preferred activity "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    :cond_ce
    :goto_ce
    move-object/from16 v16, v3

    goto :goto_12c

    :cond_d1
    if-lt v12, v5, :cond_ed

    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v2, :cond_ce

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many set tags in preferred activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_ce

    :cond_ed
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_11a

    iget-object v4, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v4, :cond_117

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    const-string v3, "Bad set name "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in preferred activity "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_12c

    :cond_117
    move-object/from16 v16, v3

    goto :goto_12c

    :cond_11a
    move-object/from16 v16, v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v12

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v12

    aput-object v14, v11, v12

    add-int/lit8 v12, v12, 0x1

    :goto_12c
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_157

    :cond_130
    move-object/from16 v16, v3

    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    invoke-interface {v2, v8, v1}, Lcom/android/server/pm/PreferredComponent$Callbacks;->onReadTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-nez v2, :cond_157

    const-string v2, "PreferredComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_157
    :goto_157
    goto :goto_15a

    :cond_158
    move-object/from16 v16, v3

    :goto_15a
    move-object/from16 v3, v16

    move-object/from16 v2, p1

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto/16 :goto_80

    :cond_162
    move-object/from16 v16, v3

    :goto_164
    if-eq v12, v5, :cond_18f

    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v2, :cond_18f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough set tags (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    :cond_18f
    iput-object v9, v0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    iput-object v10, v0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    iput-object v11, v0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)[",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    if-nez p1, :cond_8

    goto :goto_5e

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v2, v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_15
    if-ge v4, v0, :cond_51

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move v7, v1

    :goto_20
    if-ge v7, v2, :cond_4e

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v7

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v7

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v9, v9, v7

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_4e
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    return-object v1

    :cond_5e
    :goto_5e
    new-array v0, v1, [Landroid/content/ComponentName;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mMatch=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mAlways="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    if-eqz v0, :cond_57

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Selected from:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_40
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_57

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_57
    return-void
.end method

.method public getParseError()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public isSuperset(Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    if-nez p1, :cond_a

    move v1, v2

    nop

    :cond_a
    return v1

    :cond_b
    if-nez p1, :cond_e

    return v2

    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v3, v0, :cond_18

    return v1

    :cond_18
    move v4, v1

    :goto_19
    if-ge v4, v0, :cond_4a

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    move v8, v1

    :goto_25
    if-ge v8, v3, :cond_44

    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v9, v9, v8

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v9, v9, v8

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    const/4 v7, 0x1

    goto :goto_44

    :cond_41
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_44
    :goto_44
    if-nez v7, :cond_47

    return v1

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_4a
    return v2
.end method

.method public sameSet(Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    if-nez p1, :cond_9

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    return v1

    :cond_b
    if-nez p1, :cond_e

    return v2

    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v4

    move v4, v2

    :goto_18
    if-ge v4, v0, :cond_4b

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    move v9, v2

    :goto_24
    if-ge v9, v3, :cond_45

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v10, v10, v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v10, v10, v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    goto :goto_45

    :cond_42
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    :cond_45
    :goto_45
    if-nez v8, :cond_48

    return v2

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_4b
    if-ne v5, v3, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v2

    :goto_4f
    return v1
.end method

.method public sameSet([Landroid/content/ComponentName;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    array-length v0, p1

    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    move v3, v1

    :goto_d
    if-ge v3, v0, :cond_3e

    aget-object v5, p1, v3

    const/4 v6, 0x0

    move v7, v1

    :goto_13
    if-ge v7, v2, :cond_38

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    goto :goto_38

    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_38
    :goto_38
    if-nez v6, :cond_3b

    return v1

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_3e
    if-ne v4, v2, :cond_42

    const/4 v1, 0x1

    nop

    :cond_42
    return v1
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p2, :cond_56

    iget v2, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eqz v2, :cond_25

    const-string/jumbo v2, "match"

    iget v3, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_25
    const-string v2, "always"

    iget-boolean v3, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "set"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    :goto_3b
    if-ge v1, v0, :cond_56

    const-string/jumbo v2, "set"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "set"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_56
    return-void
.end method
