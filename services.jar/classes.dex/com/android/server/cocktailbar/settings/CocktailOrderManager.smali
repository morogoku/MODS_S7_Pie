.class public Lcom/android/server/cocktailbar/settings/CocktailOrderManager;
.super Ljava/lang/Object;
.source "CocktailOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;,
        Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    }
.end annotation


# static fields
.field private static final SETTINGS_ORDER_FILENAME:Ljava/lang/String; = "cocktail_order.xml"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_CLASS_NAME:Ljava/lang/String;

.field private final TAG_COCKTAIL_ID:Ljava/lang/String;

.field private final TAG_COCKTAIL_ORDER:Ljava/lang/String;

.field private final TAG_ORDER:Ljava/lang/String;

.field private final TAG_PACKAGE:Ljava/lang/String;

.field private final TAG_PROVIDER:Ljava/lang/String;

.field private final TAG_USER_ID:Ljava/lang/String;

.field mCocktailOrderedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cocktail_order"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_COCKTAIL_ORDER:Ljava/lang/String;

    const-string/jumbo v0, "provider"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_PROVIDER:Ljava/lang/String;

    const-string/jumbo v0, "order"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_ORDER:Ljava/lang/String;

    const-string/jumbo v0, "user_id"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_USER_ID:Ljava/lang/String;

    const-string v0, "cocktail_id"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_COCKTAIL_ID:Ljava/lang/String;

    const-string/jumbo v0, "package"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_PACKAGE:Ljava/lang/String;

    const-string v0, "class_name"

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_CLASS_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getSettingsFile(I)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cocktail_order.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadStateLocked()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_d} :catch_13
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    :goto_d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2b

    :catchall_11
    move-exception v2

    goto :goto_2c

    :catch_13
    move-exception v2

    :try_start_14
    sget-object v3, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_11

    goto :goto_d

    :goto_2b
    return-void

    :goto_2c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_76

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cocktail_order"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    const-string/jumbo v7, "version"

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_29} :catch_474
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_29} :catch_3cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_29} :catch_324
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_29} :catch_27c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_29} :catch_1d4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_12c
    .catchall {:try_start_3 .. :try_end_29} :catchall_129

    :try_start_29
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2d} :catch_2f
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_2d} :catch_474
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_2d} :catch_324
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_27c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_29 .. :try_end_2d} :catch_1d4
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_12c
    .catchall {:try_start_29 .. :try_end_2d} :catchall_129

    move v1, v8

    goto :goto_31

    :catch_2f
    move-exception v8

    const/4 v1, 0x0

    :goto_31
    goto :goto_76

    :cond_32
    :try_start_32
    const-string/jumbo v7, "provider"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    const-string/jumbo v7, "order"

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "user_id"

    invoke-interface {v3, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "cocktail_id"

    invoke-interface {v3, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    new-instance v10, Landroid/content/ComponentName;

    const-string/jumbo v11, "package"

    invoke-interface {v3, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "class_name"

    invoke-interface {v3, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    invoke-direct {v11, v9, v10, v8, v7}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;-><init>(ILandroid/content/ComponentName;II)V

    nop

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    :goto_76
    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    const/4 v0, 0x1

    iput-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readStateFromFileLocked: orderList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_99} :catch_474
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_99} :catch_3cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_99} :catch_324
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_99} :catch_27c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_32 .. :try_end_99} :catch_1d4
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_99} :catch_12c
    .catchall {:try_start_32 .. :try_end_99} :catchall_129

    if-nez v0, :cond_51c

    nop

    :try_start_9c
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_b5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_c0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_bf} :catch_d0
    .catchall {:try_start_9c .. :try_end_bf} :catchall_ce

    goto :goto_b5

    :cond_c0
    nop

    :try_start_c1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_ed

    :catch_c5
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_f6

    :catchall_ce
    move-exception v3

    goto :goto_109

    :catch_d0
    move-exception v3

    :try_start_d1
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catchall {:try_start_d1 .. :try_end_e8} :catchall_ce

    if-eqz v2, :cond_107

    :try_start_ea
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ee

    :goto_ed
    goto :goto_106

    :catch_ee
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f6
    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_106
    const/4 v2, 0x0

    :cond_107
    goto/16 :goto_51c

    :goto_109
    if-eqz v2, :cond_128

    :try_start_10b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10e} :catch_10f

    goto :goto_127

    :catch_10f
    move-exception v4

    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to close stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_127
    const/4 v2, 0x0

    :cond_128
    throw v3

    :catchall_129
    move-exception v3

    goto/16 :goto_51d

    :catch_12c
    move-exception v3

    :try_start_12d
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_12d .. :try_end_144} :catchall_129

    if-nez v0, :cond_51c

    nop

    :try_start_147
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_160
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_16b

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_16a} :catch_17b
    .catchall {:try_start_147 .. :try_end_16a} :catchall_179

    goto :goto_160

    :cond_16b
    nop

    :try_start_16c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_170

    goto :goto_198

    :catch_170
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1a2

    :catchall_179
    move-exception v3

    goto :goto_1b4

    :catch_17b
    move-exception v3

    :try_start_17c
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_193
    .catchall {:try_start_17c .. :try_end_193} :catchall_179

    if-eqz v2, :cond_107

    :try_start_195
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_19a

    :goto_198
    goto/16 :goto_106

    :catch_19a
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1a2
    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_106

    :goto_1b4
    if-eqz v2, :cond_1d3

    :try_start_1b6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1b9
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1b9} :catch_1ba

    goto :goto_1d2

    :catch_1ba
    move-exception v4

    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to close stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d2
    const/4 v2, 0x0

    :cond_1d3
    throw v3

    :catch_1d4
    move-exception v3

    :try_start_1d5
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catchall {:try_start_1d5 .. :try_end_1ec} :catchall_129

    if-nez v0, :cond_51c

    nop

    :try_start_1ef
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_208
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_213

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_212
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_212} :catch_223
    .catchall {:try_start_1ef .. :try_end_212} :catchall_221

    goto :goto_208

    :cond_213
    nop

    :try_start_214
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_217
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_217} :catch_218

    goto :goto_240

    :catch_218
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_24a

    :catchall_221
    move-exception v3

    goto :goto_25c

    :catch_223
    move-exception v3

    :try_start_224
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23b
    .catchall {:try_start_224 .. :try_end_23b} :catchall_221

    if-eqz v2, :cond_107

    :try_start_23d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_240
    .catch Ljava/io/IOException; {:try_start_23d .. :try_end_240} :catch_242

    :goto_240
    goto/16 :goto_106

    :catch_242
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_24a
    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_106

    :goto_25c
    if-eqz v2, :cond_27b

    :try_start_25e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_261
    .catch Ljava/io/IOException; {:try_start_25e .. :try_end_261} :catch_262

    goto :goto_27a

    :catch_262
    move-exception v4

    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to close stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27a
    const/4 v2, 0x0

    :cond_27b
    throw v3

    :catch_27c
    move-exception v3

    :try_start_27d
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_294
    .catchall {:try_start_27d .. :try_end_294} :catchall_129

    if-nez v0, :cond_51c

    nop

    :try_start_297
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2b0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_2bb

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2ba
    .catch Ljava/io/IOException; {:try_start_297 .. :try_end_2ba} :catch_2cb
    .catchall {:try_start_297 .. :try_end_2ba} :catchall_2c9

    goto :goto_2b0

    :cond_2bb
    nop

    :try_start_2bc
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2bf
    .catch Ljava/io/IOException; {:try_start_2bc .. :try_end_2bf} :catch_2c0

    goto :goto_2e8

    :catch_2c0
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2f2

    :catchall_2c9
    move-exception v3

    goto :goto_304

    :catch_2cb
    move-exception v3

    :try_start_2cc
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e3
    .catchall {:try_start_2cc .. :try_end_2e3} :catchall_2c9

    if-eqz v2, :cond_107

    :try_start_2e5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2e8
    .catch Ljava/io/IOException; {:try_start_2e5 .. :try_end_2e8} :catch_2ea

    :goto_2e8
    goto/16 :goto_106

    :catch_2ea
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2f2
    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_106

    :goto_304
    if-eqz v2, :cond_323

    :try_start_306
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_309
    .catch Ljava/io/IOException; {:try_start_306 .. :try_end_309} :catch_30a

    goto :goto_322

    :catch_30a
    move-exception v4

    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to close stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_322
    const/4 v2, 0x0

    :cond_323
    throw v3

    :catch_324
    move-exception v3

    :try_start_325
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33c
    .catchall {:try_start_325 .. :try_end_33c} :catchall_129

    if-nez v0, :cond_51c

    nop

    :try_start_33f
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_358
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_363

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_362
    .catch Ljava/io/IOException; {:try_start_33f .. :try_end_362} :catch_373
    .catchall {:try_start_33f .. :try_end_362} :catchall_371

    goto :goto_358

    :cond_363
    nop

    :try_start_364
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_367
    .catch Ljava/io/IOException; {:try_start_364 .. :try_end_367} :catch_368

    goto :goto_390

    :catch_368
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_39a

    :catchall_371
    move-exception v3

    goto :goto_3ac

    :catch_373
    move-exception v3

    :try_start_374
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38b
    .catchall {:try_start_374 .. :try_end_38b} :catchall_371

    if-eqz v2, :cond_107

    :try_start_38d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_390
    .catch Ljava/io/IOException; {:try_start_38d .. :try_end_390} :catch_392

    :goto_390
    goto/16 :goto_106

    :catch_392
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_39a
    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_106

    :goto_3ac
    if-eqz v2, :cond_3cb

    :try_start_3ae
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3b1
    .catch Ljava/io/IOException; {:try_start_3ae .. :try_end_3b1} :catch_3b2

    goto :goto_3ca

    :catch_3b2
    move-exception v4

    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to close stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3ca
    const/4 v2, 0x0

    :cond_3cb
    throw v3

    :catch_3cc
    move-exception v3

    :try_start_3cd
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e4
    .catchall {:try_start_3cd .. :try_end_3e4} :catchall_129

    if-nez v0, :cond_51c

    nop

    :try_start_3e7
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_400
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_40b

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_40a
    .catch Ljava/io/IOException; {:try_start_3e7 .. :try_end_40a} :catch_41b
    .catchall {:try_start_3e7 .. :try_end_40a} :catchall_419

    goto :goto_400

    :cond_40b
    nop

    :try_start_40c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_40f
    .catch Ljava/io/IOException; {:try_start_40c .. :try_end_40f} :catch_410

    goto :goto_438

    :catch_410
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_442

    :catchall_419
    move-exception v3

    goto :goto_454

    :catch_41b
    move-exception v3

    :try_start_41c
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_433
    .catchall {:try_start_41c .. :try_end_433} :catchall_419

    if-eqz v2, :cond_107

    :try_start_435
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_438
    .catch Ljava/io/IOException; {:try_start_435 .. :try_end_438} :catch_43a

    :goto_438
    goto/16 :goto_106

    :catch_43a
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_442
    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_106

    :goto_454
    if-eqz v2, :cond_473

    :try_start_456
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_459
    .catch Ljava/io/IOException; {:try_start_456 .. :try_end_459} :catch_45a

    goto :goto_472

    :catch_45a
    move-exception v4

    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to close stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_472
    const/4 v2, 0x0

    :cond_473
    throw v3

    :catch_474
    move-exception v3

    :try_start_475
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48c
    .catchall {:try_start_475 .. :try_end_48c} :catchall_129

    if-nez v0, :cond_51c

    nop

    :try_start_48f
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_4a8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_4b3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4b2
    .catch Ljava/io/IOException; {:try_start_48f .. :try_end_4b2} :catch_4c3
    .catchall {:try_start_48f .. :try_end_4b2} :catchall_4c1

    goto :goto_4a8

    :cond_4b3
    nop

    :try_start_4b4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4b7
    .catch Ljava/io/IOException; {:try_start_4b4 .. :try_end_4b7} :catch_4b8

    goto :goto_4e0

    :catch_4b8
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4ea

    :catchall_4c1
    move-exception v3

    goto :goto_4fc

    :catch_4c3
    move-exception v3

    :try_start_4c4
    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4db
    .catchall {:try_start_4c4 .. :try_end_4db} :catchall_4c1

    if-eqz v2, :cond_107

    :try_start_4dd
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4e0
    .catch Ljava/io/IOException; {:try_start_4dd .. :try_end_4e0} :catch_4e2

    :goto_4e0
    goto/16 :goto_106

    :catch_4e2
    move-exception v3

    sget-object v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4ea
    const-string/jumbo v6, "failed to close stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_106

    :goto_4fc
    if-eqz v2, :cond_51b

    :try_start_4fe
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_501
    .catch Ljava/io/IOException; {:try_start_4fe .. :try_end_501} :catch_502

    goto :goto_51a

    :catch_502
    move-exception v4

    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to close stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51a
    const/4 v2, 0x0

    :cond_51b
    throw v3

    :cond_51c
    :goto_51c
    return-void

    :goto_51d
    if-nez v0, :cond_5ac

    nop

    :try_start_520
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v4

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    :goto_539
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    if-eqz v7, :cond_544

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_543
    .catch Ljava/io/IOException; {:try_start_520 .. :try_end_543} :catch_554
    .catchall {:try_start_520 .. :try_end_543} :catchall_552

    goto :goto_539

    :cond_544
    nop

    :try_start_545
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_548
    .catch Ljava/io/IOException; {:try_start_545 .. :try_end_548} :catch_549

    goto :goto_571

    :catch_549
    move-exception v4

    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_57a

    :catchall_552
    move-exception v3

    goto :goto_58c

    :catch_554
    move-exception v4

    :try_start_555
    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to close stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56c
    .catchall {:try_start_555 .. :try_end_56c} :catchall_552

    if-eqz v2, :cond_5ac

    :try_start_56e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_571
    .catch Ljava/io/IOException; {:try_start_56e .. :try_end_571} :catch_572

    :goto_571
    goto :goto_58a

    :catch_572
    move-exception v4

    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_57a
    const-string/jumbo v7, "failed to close stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58a
    const/4 v2, 0x0

    goto :goto_5ac

    :goto_58c
    if-eqz v2, :cond_5ab

    :try_start_58e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_591
    .catch Ljava/io/IOException; {:try_start_58e .. :try_end_591} :catch_592

    goto :goto_5aa

    :catch_592
    move-exception v4

    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to close stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5aa
    const/4 v2, 0x0

    :cond_5ab
    throw v3

    :cond_5ac
    :goto_5ac
    throw v3
.end method

.method private saveStateLocked()V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1c

    :cond_12
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    sget-object v2, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to save state, restoring backup."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_1d

    :goto_1c
    goto :goto_34

    :catch_1d
    move-exception v1

    sget-object v2, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed open state file for write: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method private savedStateFile()Landroid/util/AtomicFile;
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->getSettingsFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_18
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/cocktail_order.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_22
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method private writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-nez v1, :cond_d

    sget-object v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to write state: no order info"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v2, "utf-8"

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "cocktail_order"

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v0

    :goto_2d
    if-ge v5, v3, :cond_80

    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    iget-object v7, v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_7d

    const-string/jumbo v8, "provider"

    invoke-interface {v1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "order"

    iget v9, v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mOrder:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "user_id"

    iget v9, v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mUserId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "cocktail_id"

    iget v9, v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "package"

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "class_name"

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "provider"

    invoke-interface {v1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_80
    const-string v5, "cocktail_order"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_88} :catch_89

    return v2

    :catch_89
    move-exception v1

    sget-object v2, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CocktailOrderManager]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_2c

    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    iget v4, v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2c
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    :cond_32
    const-string/jumbo v2, "null\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_3e

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2
.end method

.method public getMatchedSortIds(Ljava/util/ArrayList;Landroid/util/SparseArray;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_c
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->loadStateLocked()V

    sget-object v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMatchedSortIds: loadedorder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    :cond_2a
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_67

    :cond_37
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    new-instance v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;

    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;-><init>(Lcom/android/server/cocktailbar/settings/CocktailOrderManager;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_55
    if-ge v2, v1, :cond_66

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_66
    return-object v0

    :catchall_67
    move-exception v1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v1
.end method

.method public setOrderedList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->saveStateLocked()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
