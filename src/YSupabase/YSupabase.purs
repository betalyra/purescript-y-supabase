module YSupabase.YSupabase
  ( Props
  , ySupabaseProvider
  ) where

import Data.Nullable (Nullable)
import Effect (Effect)
import Effect.Uncurried (EffectFn3, runEffectFn3)
import Supabase.Types as SBTypes
import Yjs.Yjs as Yjs

type Props id =
  { channel :: String
  , id :: id
  , idName :: Nullable String
  , tableName :: String
  , columnName :: String
  , aggregationIdName :: Nullable String
  , aggregationViewName :: String
  , aggregationColumnName :: String
  , resyncInterval :: Nullable Number
  , saveInterval :: Nullable Number
  }

foreign import ySupabaseProviderImpl :: forall id. EffectFn3 Yjs.YDoc SBTypes.Client (Props id) Yjs.Provider

ySupabaseProvider ∷ forall id. Yjs.YDoc → SBTypes.Client → Props id → Effect Yjs.Provider
ySupabaseProvider = runEffectFn3 ySupabaseProviderImpl
